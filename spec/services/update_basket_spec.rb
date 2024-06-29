# frozen_string_literal: true

RSpec.describe Services::UpdateBasket do
  it 'Update basket with new products' do
    basket = Services::CreateBasket.call('SR1, SR1')
    basket = Services::UpdateBasket.call(basket, 'GR1, CF1')

    expect(basket.class).to eq(Basket)
    expect(basket.size).to eq(4)
  end

  it 'Should add usable codes only' do
    basket = Services::CreateBasket.call('SR1, SR1, EE1')
    basket = Services::UpdateBasket.call(basket, 'GR1, XX1')

    expect(basket.class).to eq(Basket)
    expect(basket.size).to eq(3)
  end
end
