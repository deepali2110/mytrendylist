require "test_helper"

class MycartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mycart = mycarts(:one)
  end

  test "should get index" do
    get mycarts_url
    assert_response :success
  end

  test "should get new" do
    get new_mycart_url
    assert_response :success
  end

  test "should create mycart" do
    assert_difference('Mycart.count') do
      post mycarts_url, params: { mycart: { count: @mycart.count, productid: @mycart.productid, productname: @mycart.productname, useremail: @mycart.useremail, userid: @mycart.userid } }
    end

    assert_redirected_to mycart_url(Mycart.last)
  end

  test "should show mycart" do
    get mycart_url(@mycart)
    assert_response :success
  end

  test "should get edit" do
    get edit_mycart_url(@mycart)
    assert_response :success
  end

  test "should update mycart" do
    patch mycart_url(@mycart), params: { mycart: { count: @mycart.count, productid: @mycart.productid, productname: @mycart.productname, useremail: @mycart.useremail, userid: @mycart.userid } }
    assert_redirected_to mycart_url(@mycart)
  end

  test "should destroy mycart" do
    assert_difference('Mycart.count', -1) do
      delete mycart_url(@mycart)
    end

    assert_redirected_to mycarts_url
  end
end
