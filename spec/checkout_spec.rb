require './lib/Checkout.rb'

describe Checkout do

  # before do
  #
  # end

  it 'returns a list of products' do
    list = { heart: { nr001: 9.25 },
                    cufflinks: { nr002: 45.0 },
                    tshirt: { nr003: 19.95 } }
    expect(subject.products).to eq list
  end

  it 'adds item number to basket' do
    expect(subject.add_to_basket('nr001')).to eq ['nr001']
  end

  it 'scans item and adds it to basket' do
    expect(subject.scan('heart')).to eq ['nr001', 9.25]
  end

  it 'prints out what is in the basket' do
    subject.scan('heart')
    expect(subject.total).to eq ['Basket: nr001 ', "Total price expected: 9.25"]
  end
end
