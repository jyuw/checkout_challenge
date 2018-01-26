require './lib/promo_rules.rb'

describe PromoRules do

  it 'delivers the correct discount' do
    expect(subject.discount_test(90, [])).to eq 81
  end

  it 'checks if more than two of one product is in the basket' do
    expect(subject.discount_test(18.50, ['nr001', 'nr001'])).to eq 17
  end

end
