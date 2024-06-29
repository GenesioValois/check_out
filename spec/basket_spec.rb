# frozen_string_literal: true

RSpec.describe Basket do
  before :each do
    @products = [
      GreenTea.new,
      Coffee.new,
      Strawberries.new
    ]
  end

  it 'Basket should have multiple products' do
    basket = Basket.new(@products)

    expect(basket.size).to eq(3)
  end

  it 'Basket should list all products code' do
    basket = Basket.new(@products)

    expect(basket.codes).to eq(%w[GR1 CF1 SR1])
  end
end
