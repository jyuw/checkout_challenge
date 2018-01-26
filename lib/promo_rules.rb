require 'checkout.rb'
require 'pry'

module PromoRules

  DISCOUNT = 10.0
  MINIMUM = 60.0
  PRODUCT_CODE = 'nr001'
  PRICE_DROP = 8.50

  def self.discount_test(total_price, basket)
    new_basket = self.product_counter(basket)
    percentage = (1 - (DISCOUNT / 100))
    final_price = total_price * percentage
  end

  def self.product_counter(basket)
    discount_product = []
    basket.each do |i|
      discount_product << i if i == PRODUCT_CODE
    end
  return discount_product
    binding.pry
  end

end
