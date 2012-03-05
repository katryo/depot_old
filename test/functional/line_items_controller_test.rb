<<<<<<< HEAD
#---
# Excerpted from "Agile Web Development with Rails",
=======
# encoding: utf-8
#---
# Excerpted from "Agile Web Development with Rails, 4th Ed.",
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
<<<<<<< HEAD
=======
#
# 日本語版については http://ssl.ohmsha.co.jp/cgi-bin/menu.cgi?ISBN=978-4-274-06866-9
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
#---
require 'test_helper'

class LineItemsControllerTest < ActionController::TestCase
  setup do
    @line_item = line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_item" do
    assert_difference('LineItem.count') do
      post :create, product_id: products(:ruby).id
    end

    assert_redirected_to cart_path(assigns(:line_item).cart)
  end

  test "should show line_item" do
<<<<<<< HEAD
    get :show, id: @line_item
=======
    get :show, id: @line_item.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get :edit, id: @line_item
=======
    get :edit, id: @line_item.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_response :success
  end

  test "should update line_item" do
<<<<<<< HEAD
    put :update, id: @line_item, line_item: @line_item.attributes
=======
    put :update, id: @line_item.to_param, line_item: @line_item.attributes
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_redirected_to line_item_path(assigns(:line_item))
  end

  test "should destroy line_item" do
    assert_difference('LineItem.count', -1) do
<<<<<<< HEAD
      delete :destroy, id: @line_item
=======
      delete :destroy, id: @line_item.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    end

    assert_redirected_to line_items_path
  end
end
