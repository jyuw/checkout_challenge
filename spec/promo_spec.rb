require './lib/promo_rules.rb'

describe Promo_rules do #product_code, price_drop

subject { Promo_rules.new(60.0, 10.0, 'nr001', 8.50 ) }

  it 'deliver the correct discount' do
    expect(subject.minimum_spent(60, 10)).to eq 54
  end

end
