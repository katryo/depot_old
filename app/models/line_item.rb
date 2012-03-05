<<<<<<< HEAD
#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

=======
# encoding: utf-8

class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
  def total_price
    product.price * quantity
  end
end
