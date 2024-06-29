# frozen_string_literal: true

RSpec.describe Services::RemoveProductsFromBasket do
  it 'Update basket with new products' do
    basket = Services::CreateBasket.call('SR1, SR1')
    basket = Services::RemoveProductsFromBasket.call(basket, 'SR1')

    expect(basket.class).to eq(Basket)
    expect(basket.size).to eq(1)
  end

  it 'Should add usable codes only' do
    basket = Services::CreateBasket.call('SR1, SR1, GR1')

    basket = Services::RemoveProductsFromBasket.call(basket, 'GR1, XX1')

    expect(basket.class).to eq(Basket)
    expect(basket.size).to eq(2)
  end
end
