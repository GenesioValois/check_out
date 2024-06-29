# frozen_string_literal: true

require_relative 'callable'

module Services
  class CreateBasket
    extend Callable

    CODESTOOBJ = {
      'GR1' => GreenTea,
      'SR1' => Strawberries,
      'CF1' => Coffee
    }.freeze

    attr_accessor :codes

    def initialize(codes)
      @codes = codes
    end

    def call
      Basket.new(
        products
      )
    end

    private

    def products
      codes.split(',').map do |code|
        CODESTOOBJ[code.strip].new
      end
    end
  end
end
