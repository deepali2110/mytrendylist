class MycartsController < ApplicationController
  before_action :set_mycart, only: %i[ show edit update destroy ]

  # GET /mycarts or /mycarts.json
  def index
    @mycarts = Mycart.all
  end

  # GET /mycarts/1 or /mycarts/1.json
  def show
    redirect_to root_path
  end

  # GET /mycarts/new
  def new
    @mycart = Mycart.new
  end

  # GET /mycarts/1/edit
  def edit
  end

  # POST /mycarts or /mycarts.json
  def create
    @mycart = Mycart.new(mycart_params)

    respond_to do |format|
      if @mycart.save
        format.html { redirect_to @mycart, notice: "Mycart was successfully created." }
        format.json { render :show, status: :created, location: @mycart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mycart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycarts/1 or /mycarts/1.json
  def update
    respond_to do |format|
      if @mycart.update(mycart_params)
        format.html { redirect_to @mycart, notice: "Mycart was successfully updated." }
        format.json { render :show, status: :ok, location: @mycart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mycart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycarts/1 or /mycarts/1.json
  def destroy
    @mycart.destroy
    respond_to do |format|
      format.html { redirect_to mycarts_url, notice: "Mycart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycart
      @mycart = Mycart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mycart_params
      params.require(:mycart).permit(:userid, :useremail, :productid, :productname, :count)
    end
end
