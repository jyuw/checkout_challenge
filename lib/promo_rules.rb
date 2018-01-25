require 'Checkout.rb'

class Promo_rules
  attr_accessor :minimum, :discount, :product_code, :price_drop

  def initialize(minimum, discount, product_code, price_drop)
    @minimum = minimum
    @discount = discount
    @product_code = product_code
    @price_drop = price_drop
  end

  def minimum_spent(discount)
    @total_price * (discount/10)
  end
end
