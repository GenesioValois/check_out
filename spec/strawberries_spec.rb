# frozen_string_literal: true

RSpec.describe GreenTea do
  it 'test initial Strawberries values' do
    strawberries = Strawberries.new
    expect(strawberries.code).to eq('SR1')
    expect(strawberries.name).to eq('Strawberries')
    expect(strawberries.price).to eq(5.0)
  end
end
