# frozen_string_literal: true

require_relative 'callable'

module Services
  class CalculatePrice
    extend Callable

    attr_accessor :basket, :promotion

    def initialize(basket)
      @basket = basket
      @promotion = {}
    end

    def call
      basket.products.sum(0.0) do |product|
        product.price
      end
    end
  end
end
