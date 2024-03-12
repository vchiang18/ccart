require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Order", with: @order.Order
    fill_in "Brand", with: @order.brand_id
    fill_in "Generate", with: @order.generate
    fill_in "Item", with: @order.item_id
    fill_in "Last edited", with: @order.last_edited
    fill_in "Last edited by", with: @order.last_edited_by_id
    fill_in "Notes", with: @order.notes
    fill_in "Purchased price", with: @order.purchased_price
    fill_in "Purchased quantity", with: @order.purchased_quantity
    fill_in "Quantity", with: @order.quantity
    fill_in "Rails", with: @order.rails
    fill_in "Requestor", with: @order.requestor_id
    fill_in "Scaffold", with: @order.scaffold
    fill_in "Status", with: @order.status
    fill_in "Unit quantity", with: @order.unit_quantity
    fill_in "Unit type", with: @order.unit_type
    fill_in "Vendor", with: @order.vendor_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Order", with: @order.Order
    fill_in "Brand", with: @order.brand_id
    fill_in "Generate", with: @order.generate
    fill_in "Item", with: @order.item_id
    fill_in "Last edited", with: @order.last_edited
    fill_in "Last edited by", with: @order.last_edited_by_id
    fill_in "Notes", with: @order.notes
    fill_in "Purchased price", with: @order.purchased_price
    fill_in "Purchased quantity", with: @order.purchased_quantity
    fill_in "Quantity", with: @order.quantity
    fill_in "Rails", with: @order.rails
    fill_in "Requestor", with: @order.requestor_id
    fill_in "Scaffold", with: @order.scaffold
    fill_in "Status", with: @order.status
    fill_in "Unit quantity", with: @order.unit_quantity
    fill_in "Unit type", with: @order.unit_type
    fill_in "Vendor", with: @order.vendor_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
