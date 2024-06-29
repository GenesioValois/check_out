# frozen_string_literal: true

require_relative 'callable'

module Services
  class RemoveProductsFromBasket
    extend Callable

    attr_accessor :basket, :codes

    def initialize(basket, codes)
      @basket = basket
      @codes = codes.split(',')
    end

    # create a new basket with the union of the old codes with the new
    def call
      Services::CreateBasket.call(
        new_codes(basket.codes)
      )
    end

    private

    def new_codes(old_codes)
      codes.each do |code|
        index = old_codes.index(code)
        next unless index

        old_codes.delete_at(index)
      end
      old_codes.join(',')
    end
  end
end
