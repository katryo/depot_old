# encoding: utf-8
#---
# Excerpted from "Agile Web Development with Rails, 4th Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#
# 日本語版については http://ssl.ohmsha.co.jp/cgi-bin/menu.cgi?ISBN=978-4-274-06866-9
#---
class CombineItemsInCart < ActiveRecord::Migration

  def up
    # カート内に1つの商品に対して複数の品目があった場合は、1つの品目に置き換える
    Cart.all.each do |cart|
      # カート内の各商品の数をカウントする
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
          # 個別の品目を削除する
          cart.line_items.where(product_id: product_id).delete_all

          # 1つの品目に置き換える
          cart.line_items.create(product_id: product_id, quantity: quantity)
        end
      end
    end
  end

  def down
    # 数量>1の品目を複数の品目に分割する
    LineItem.where("quantity>1").each do |line_item|
      # 個別の品目を追加する
      line_item.quantity.times do 
        LineItem.create cart_id: line_item.cart_id,
          product_id: line_item.product_id, quantity: 1
      end

      # 元の品目を削除する
      line_item.destroy
    end
  end
end
