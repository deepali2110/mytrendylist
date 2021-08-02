require "application_system_test_case"

class MycartsTest < ApplicationSystemTestCase
  setup do
    @mycart = mycarts(:one)
  end

  test "visiting the index" do
    visit mycarts_url
    assert_selector "h1", text: "Mycarts"
  end

  test "creating a Mycart" do
    visit mycarts_url
    click_on "New Mycart"

    fill_in "Count", with: @mycart.count
    fill_in "Productid", with: @mycart.productid
    fill_in "Productname", with: @mycart.productname
    fill_in "Useremail", with: @mycart.useremail
    fill_in "Userid", with: @mycart.userid
    click_on "Create Mycart"

    assert_text "Mycart was successfully created"
    click_on "Back"
  end

  test "updating a Mycart" do
    visit mycarts_url
    click_on "Edit", match: :first

    fill_in "Count", with: @mycart.count
    fill_in "Productid", with: @mycart.productid
    fill_in "Productname", with: @mycart.productname
    fill_in "Useremail", with: @mycart.useremail
    fill_in "Userid", with: @mycart.userid
    click_on "Update Mycart"

    assert_text "Mycart was successfully updated"
    click_on "Back"
  end

  test "destroying a Mycart" do
    visit mycarts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mycart was successfully destroyed"
  end
end
