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
        final_price(product)
      end
    end

    private

    def final_price(product)
      check_promotion(product.code) ? product.discounted_price : product.price
    end

    def check_promotion(code)
      return promotion[code] if promotion[code]

      promotion[code] =
        case code
        when 'GR1'
          basket.codes == %w[GR1 GR1]
        when 'SR1'
          basket.codes.filter { |c| c == code }.size >= 3
        when 'CF1'
          basket.codes.filter { |c| c == code }.size >= 3
        else
          false
        end
      promotion[code]
    end
  end
end
