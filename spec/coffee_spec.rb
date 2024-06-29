# frozen_string_literal: true

RSpec.describe Coffee do
  it 'test initial Coffee values' do
    coffee = Coffee.new
    expect(coffee.code).to eq('CF1')
    expect(coffee.name).to eq('Coffee')
    expect(coffee.price).to eq(11.23)
  end
end
