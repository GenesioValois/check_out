# frozen_string_literal: true

RSpec.describe Services::CalculatePrice do
  it 'Should calculate the final price of a small basket' do
    basket = Services::CreateBasket.call('GR1,GR1')
    price = Services::CalculatePrice.call(basket)

    expect(price).to eq(3.11)
  end

  it 'Should calculate the final prce of a medium basket' do
    basket = Services::CreateBasket.call('SR1,SR1,GR1,SR1')
    price = Services::CalculatePrice.call(basket)

    expect(price).to eq(16.61)
  end

  it 'Should calculate the final prce of a big basket' do
    basket = Services::CreateBasket.call('GR1,CF1,SR1,CF1,CF1')
    price = Services::CalculatePrice.call(basket)

    expect(price).to eq(30.57)
  end
end
