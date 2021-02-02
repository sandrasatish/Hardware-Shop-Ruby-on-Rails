require "application_system_test_case"

class Product1sTest < ApplicationSystemTestCase
  setup do
    @product1 = product1s(:one)
  end

  test "visiting the index" do
    visit product1s_url
    assert_selector "h1", text: "Product1s"
  end

  test "creating a Product1" do
    visit product1s_url
    click_on "New Product1"

    fill_in "Price", with: @product1.price
    fill_in "Title", with: @product1.title
    click_on "Create Product1"

    assert_text "Product1 was successfully created"
    click_on "Back"
  end

  test "updating a Product1" do
    visit product1s_url
    click_on "Edit", match: :first

    fill_in "Price", with: @product1.price
    fill_in "Title", with: @product1.title
    click_on "Update Product1"

    assert_text "Product1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Product1" do
    visit product1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product1 was successfully destroyed"
  end
end
