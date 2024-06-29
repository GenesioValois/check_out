# frozen_string_literal: true

require_relative 'check_out/version'
require_relative 'check_out/green_tea'
require_relative 'check_out/strawberries'
require_relative 'check_out/coffee'
require_relative 'check_out/basket'
require_relative 'services/create_basket'
require_relative 'services/update_basket'
require_relative 'services/calculate_price'
require_relative 'services/remove_products_from_basket'

module CheckOut
  class Error < StandardError; end
  # Your code goes here...
end
