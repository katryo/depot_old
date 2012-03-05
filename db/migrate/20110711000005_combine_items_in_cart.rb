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
class CombineItemsInCart < ActiveRecord::Migration

  def up
<<<<<<< HEAD
    # replace multiple items for a single product in a cart with a single item
    Cart.all.each do |cart|
      # count the number of each product in the cart
=======
    # カート内に1つの商品に対して複数の品目があった場合は、1つの品目に置き換える
    Cart.all.each do |cart|
      # カート内の各商品の数をカウントする
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
<<<<<<< HEAD
          # remove individual items
          cart.line_items.where(product_id: product_id).delete_all

          # replace with a single item
=======
          # 個別の品目を削除する
          cart.line_items.where(product_id: product_id).delete_all

          # 1つの品目に置き換える
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
          cart.line_items.create(product_id: product_id, quantity: quantity)
        end
      end
    end
  end

  def down
<<<<<<< HEAD
    # split items with quantity>1 into multiple items
    LineItem.where("quantity>1").each do |line_item|
      # add individual items
=======
    # 数量>1の品目を複数の品目に分割する
    LineItem.where("quantity>1").each do |line_item|
      # 個別の品目を追加する
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
      line_item.quantity.times do 
        LineItem.create cart_id: line_item.cart_id,
          product_id: line_item.product_id, quantity: 1
      end

<<<<<<< HEAD
      # remove original item
=======
      # 元の品目を削除する
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
      line_item.destroy
    end
  end
end
