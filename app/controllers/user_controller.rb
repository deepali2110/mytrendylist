class UserController < ApplicationController
    def create
        @user = User.new(user_params)
    
        if @user.save
          USerMailer.with(user: @user).new_user_email.deliver_later
    
          flash[:success] = "You have Successfully Signed Up/Logged In"
          redirect_to root_path
        else
          flash.now[:error] = "Unprocessable_entity. "
          render :new
        end
      end
  end