require 'Checkout.rb'

module PromoRules

DISCOUNT = 10
MINIMUM = 60.0
PRODUCT_CODE = :nr001
PRICE_DROP = 8.50


  def minimum_spent(total_price)
    percentage = (1 - (DISCOUNT / 100))
    total_price *= percentage
  end



end
