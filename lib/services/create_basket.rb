# frozen_string_literal: true

require_relative 'callable'

module Services
  class CreateBasket
    extend Callable
    def initialize(product_list)
      @product_list = product_list
    end

    def call
    end
  end
end
