# frozen_string_literal: true

require_relative 'product'

class Coffee < Product
  def initialize
    super('CF1', 'Coffee', 11.23)
  end

  def discounted_price
    (2 / 3.0) * price
  end
end
