# frozen_string_literal: true
require_relative 'product'

class Coffee < Product
  def initialize
    super('CF1', 'Coffee', 11.23)
  end
end
