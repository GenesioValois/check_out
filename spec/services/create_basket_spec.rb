# frozen_string_literal: true

RSpec.describe Services::CreateBasket do
  it 'Should create a basket from a list of codes' do
    basket = Services::CreateBasket.call('SR1, SR1')

    expect(basket.size).to eq(2)
  end
end
