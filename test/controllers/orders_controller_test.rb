require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { Order: @order.Order, brand_id: @order.brand_id, generate: @order.generate, item_id: @order.item_id, last_edited: @order.last_edited, last_edited_by_id: @order.last_edited_by_id, notes: @order.notes, purchased_price: @order.purchased_price, purchased_quantity: @order.purchased_quantity, quantity: @order.quantity, rails: @order.rails, requestor_id: @order.requestor_id, scaffold: @order.scaffold, status: @order.status, unit_quantity: @order.unit_quantity, unit_type: @order.unit_type, vendor_id: @order.vendor_id } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { Order: @order.Order, brand_id: @order.brand_id, generate: @order.generate, item_id: @order.item_id, last_edited: @order.last_edited, last_edited_by_id: @order.last_edited_by_id, notes: @order.notes, purchased_price: @order.purchased_price, purchased_quantity: @order.purchased_quantity, quantity: @order.quantity, rails: @order.rails, requestor_id: @order.requestor_id, scaffold: @order.scaffold, status: @order.status, unit_quantity: @order.unit_quantity, unit_type: @order.unit_type, vendor_id: @order.vendor_id } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
