# frozen_string_literal: true

require_relative 'product'

class Strawberries < Product
  def initialize
    super('SR1', 'Strawberries', 5.0)
  end

  def discounted_price
    0.9 * price
  end
end
