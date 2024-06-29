# frozen_string_literal: true

require_relative 'callable'

module Services
  class UpdateBasket
    extend Callable

    attr_accessor :basket, :codes

    def initialize(basket, codes)
      @basket = basket
      @codes = codes
    end

    # create a new basket with the union of the old codes with the new
    def call
      Services::CreateBasket.call(
        "#{basket.codes.join(',')},#{codes}"
      )
    end
  end
end
