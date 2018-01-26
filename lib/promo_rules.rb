require 'checkout.rb'
require 'pry'

module PromoRules

  DISCOUNT = 10.0
  MINIMUM = 60.0
  PRODUCT_CODE = :nr001
  PRICE_DROP = 8.50

  def self.discount_test(total_price, basket)
    percentage = (1 - (DISCOUNT / 100))
    final_price = total_price * percentage
  end
end
