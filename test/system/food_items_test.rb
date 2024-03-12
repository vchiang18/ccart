require "application_system_test_case"

class FoodItemsTest < ApplicationSystemTestCase
  setup do
    @food_item = food_items(:one)
  end

  test "visiting the index" do
    visit food_items_url
    assert_selector "h1", text: "Food items"
  end

  test "should create food item" do
    visit food_items_url
    click_on "New food item"

    fill_in "Brand", with: @food_item.brand_id
    fill_in "Item name", with: @food_item.item_name
    fill_in "Price", with: @food_item.price
    fill_in "Unit quantity", with: @food_item.unit_quantity
    fill_in "Unit type", with: @food_item.unit_type
    fill_in "Vendor", with: @food_item.vendor_id
    click_on "Create Food item"

    assert_text "Food item was successfully created"
    click_on "Back"
  end

  test "should update Food item" do
    visit food_item_url(@food_item)
    click_on "Edit this food item", match: :first

    fill_in "Brand", with: @food_item.brand_id
    fill_in "Item name", with: @food_item.item_name
    fill_in "Price", with: @food_item.price
    fill_in "Unit quantity", with: @food_item.unit_quantity
    fill_in "Unit type", with: @food_item.unit_type
    fill_in "Vendor", with: @food_item.vendor_id
    click_on "Update Food item"

    assert_text "Food item was successfully updated"
    click_on "Back"
  end

  test "should destroy Food item" do
    visit food_item_url(@food_item)
    click_on "Destroy this food item", match: :first

    assert_text "Food item was successfully destroyed"
  end
end
