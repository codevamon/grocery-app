require "application_system_test_case"

class GroceriesTest < ApplicationSystemTestCase
  setup do
    @grocery = groceries(:one)
  end

  test "visiting the index" do
    visit groceries_url
    assert_selector "h1", text: "Groceries"
  end

  test "should create grocery" do
    visit groceries_url
    click_on "New grocery"

    fill_in "Category", with: @grocery.category
    fill_in "Grocery name", with: @grocery.grocery_name
    fill_in "Pickup time", with: @grocery.pickup_time
    fill_in "Quantity", with: @grocery.quantity
    fill_in "Store name", with: @grocery.store_name
    click_on "Create Grocery"

    assert_text "Grocery was successfully created"
    click_on "Back"
  end

  test "should update Grocery" do
    visit grocery_url(@grocery)
    click_on "Edit this grocery", match: :first

    fill_in "Category", with: @grocery.category
    fill_in "Grocery name", with: @grocery.grocery_name
    fill_in "Pickup time", with: @grocery.pickup_time
    fill_in "Quantity", with: @grocery.quantity
    fill_in "Store name", with: @grocery.store_name
    click_on "Update Grocery"

    assert_text "Grocery was successfully updated"
    click_on "Back"
  end

  test "should destroy Grocery" do
    visit grocery_url(@grocery)
    click_on "Destroy this grocery", match: :first

    assert_text "Grocery was successfully destroyed"
  end
end
