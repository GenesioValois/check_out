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
end
