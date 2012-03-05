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
# 日本語版につ�?��は http://ssl.ohmsha.co.jp/cgi-bin/menu.cgi?ISBN=978-4-274-06866-9
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
#---
require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post :create, cart: @cart.attributes
    end

    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should show cart" do
<<<<<<< HEAD
    get :show, id: @cart
=======
    get :show, id: @cart.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get :edit, id: @cart
=======
    get :edit, id: @cart.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_response :success
  end

  test "should update cart" do
<<<<<<< HEAD
    put :update, id: @cart, cart: @cart.attributes
=======
    put :update, id: @cart.to_param, cart: @cart.attributes
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
<<<<<<< HEAD
      session[:cart_id] = @cart.id
      delete :destroy, id: @cart
=======
      delete :destroy, {id: @cart.to_param}, {cart_id: @cart.id}
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    end

    assert_redirected_to store_path
  end
end
