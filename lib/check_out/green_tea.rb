# frozen_string_literal: true

require_relative 'product'

class GreenTea < Product
  def initialize
    super('GR1', 'Green Tea', 3.11)
  end

  def discounted_price
    0.5 * price
  end
end
