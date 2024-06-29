# frozen_string_literal: true
require_relative 'check_out/green_tea'
require_relative 'check_out/strawberries'
require_relative 'check_out/coffee'
require_relative 'check_out/basket'
require_relative 'services/create_basket'
require_relative 'services/calculate_price'
require_relative 'services/update_basket'
require_relative 'services/remove_products_from_basket'

class Cli
  attr_accessor :basket

  def initialize
    main_menu
  end

  def main_menu
    print_line
    puts 'Welcome to Amenitiz cash register'
    loop do
      menu_options
      input = gets.chomp.to_i
      case input
      when 1
        create_basket
      when 2
        calculate_price
      when 3
        update_basket
      when 4
        remove_products
      when 0
        break
      else
        puts 'Please select a valid option'
      end
    end
  end

  private

  def print_line
    puts '---------------------------------'
  end

  def menu_options
    puts 'Please select from options below:'
    puts '1. Create a new basket'
    puts '2. Calculate final price'
    puts '3. Add products to the basket' if basket
    puts '4. Remove products to the basket' if basket
    puts '0. Exit'
    print_line
  end

  def create_basket
    puts 'Please insert product codes, separated with comma:'
    input = gets.chomp.to_s
    @basket = Services::CreateBasket.call(input)
  end

  def calculate_price
    print_line
    puts 'Final basket price:'
    price = Services::CalculatePrice.call(basket)
    puts "| #{basket.codes.join(',')} | #{price}"
    print_line
  end

  def update_basket
    puts 'Please insert product codes, separated with comma:'
    input = gets.chomp.to_s

    @basket = Services::UpdateBasket.call(basket, input)
  end

  def remove_products
    puts 'Please insert a product codes to be removed, separated with comma:'
    input = gets.chomp.to_s

    @basket = Services::RemoveProductsFromBasket.call(basket, input)
  end
end

Cli.new
