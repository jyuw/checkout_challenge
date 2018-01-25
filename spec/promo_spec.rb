require './lib/promo_rules.rb'

describe Promo_rules do

subject { Promo_rules.new }

  it 'deliver the correct discount' do
    expect(subject.rules(60, 10, 001, 8.5)).to eq 
  end

end
