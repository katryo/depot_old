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

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title:       'Lorem Ipsum',
      description: 'Wibbles are fun!',
      image_url:   'lorem.jpg',
      price:       19.95
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

<<<<<<< HEAD
  test "should show product" do
    get :show, id: @product
=======
  # ...

  test "should show product" do
    get :show, id: @product.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get :edit, id: @product
=======
    get :edit, id: @product.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    assert_response :success
  end

  test "should update product" do
<<<<<<< HEAD
    put :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "can't delete product in cart" do
    assert_difference('Product.count', 0) do
      delete :destroy, id: products(:ruby)
    end

    assert_redirected_to products_path
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
=======
    put :update, id: @product.to_param, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  # ...

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product.to_param
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    end

    assert_redirected_to products_path
  end
end
