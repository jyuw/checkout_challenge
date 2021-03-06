require './lib/promo_rules.rb'


class Checkout
  #include PromoRules

  attr_accessor :products, :basket, :total_price

  def initialize()
    @total_price = 0
    @basket = []
    @products = { heart: { nr001: 9.25 },
                  cufflinks: { nr002: 45.0 },
                  tshirt: { nr003: 19.95 } }
  end

  def scan(name)
    item = name.to_sym
    item_number = @products[item].keys
    add_to_basket(item_number[0].to_s)
    item_price = @products[item].values
    @total_price += item_price[0]
    return [item_number[0].to_s, item_price[0]]
  end

  def add_to_basket(item)
    @basket << item
  end

  def total
    if @total_price >= PromoRules::MINIMUM
      @total_price = PromoRules.discount_test(@total_price, @basket)
    end

    basket = 'Basket: '
    @basket.each {|item| basket << item + ' '}
    price = 'Total price expected: ' + @total_price.to_s
    return [basket, price]
  end
end

#As a market
#In order to display our goods
#We need to make a database

#As a user
#In order to be able to scan an item
#We need to correspond the goods to prices

#As a market
#In order to promote sales
#We need to be able to calculate sale prices

#As a programmer
#In order to give discounts
#We need to calculate discounts

#As a user
#In order to check out
#We need to display the correct final price with discount
