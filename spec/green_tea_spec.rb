# frozen_string_literal: true

RSpec.describe GreenTea do
  it 'test initial GreenTea values' do
    green_tea = GreenTea.new
    expect(green_tea.code).to eq('GR1')
    expect(green_tea.name).to eq('Green tea')
    expect(green_tea.price).to eq(3.11)
  end
end
