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
class Product < ActiveRecord::Base
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  #...

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
<<<<<<< HEAD
# 
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)$}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
=======
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)$}i,
    message: 'はGIF、JPG、PNG画像のURLでなければなりません'
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
  }
  validates :title, length: {minimum: 10}

  private

<<<<<<< HEAD
    # ensure that there are no line items referencing this product
=======
    # この商品を参照している品目がないことを確認する
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
<<<<<<< HEAD
        errors.add(:base, 'Line Items present')
=======
        errors.add(:base, '品目が存在します')
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
        return false
      end
    end
end
