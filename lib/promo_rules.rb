require 'checkout.rb'
require 'pry'

module PromoRules

  DISCOUNT = 10.0
  MINIMUM = 60.0
  PRODUCT_CODE = 'nr001'
  PRICE_DROP = 0.75 # 9.25 - 8.50

  def self.discount_test(total_price, basket)
    new_basket = product_counter(basket)
    if new_basket.length >= 2 && total_price >= MINIMUM
      total_discount(total_price)
    elsif total_price >= MINIMUM
      minimum_spent(total_price)
    elsif new_basket.length >= 2
      discount_product_price(total_price)
    else
      total_price
    end
  end

  def self.total_discount(total_price)
    total = total_price - (PRICE_DROP * 2)
    minimum_spent(total)
  end

  def self.product_counter(basket)
    discount_product = []
    basket.each do |i|
      discount_product << i if i == PRODUCT_CODE
    end
  return discount_product
  end

  def self.minimum_spent(total_price)
    percentage = (1 - (DISCOUNT / 100))
    total_price * percentage
  end

  def self.discount_product_price(total_price)
    total_price -= (PRICE_DROP * 2)
  end
end
