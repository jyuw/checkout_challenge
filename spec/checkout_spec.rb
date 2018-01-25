require './lib/Checkout.rb'

describe Checkout do

  before do
    list = { nr001: 9.25, nr002: 45.0, nr003: 19.95 }
  end

  it 'returns a list of products' do
    expect(subject.list).to eq list
  end

end
