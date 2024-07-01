# Amenitiz Techincal Challenge

It's a Cash register application that allows you to add products, remove products, and calculate the total price of the products added.

### Assumptions

**Products Registered**
| Product Code | Name | Price |  
|--|--|--|
| GR1 |  Green Tea | 3.11€ |
| SR1 |  Strawberries | 5.00 € |
| CF1 |  Coffee | 11.23 € |

**Special conditions**

- The CEO is a big fan of buy-one-get-one-free offers and green tea.
He wants us to add a  rule to do this.

- The COO, though, likes low prices and wants people buying strawberries to get a price  discount for bulk purchases.
If you buy 3 or more strawberries, the price should drop to 4.50€.

- The VP of Engineering is a coffee addict.
If you buy 3 or more coffees, the price of all coffees should drop to 2/3 of the original price.

Our check-out can scan items in any order, and because the CEO and COO change their minds  often, it needs to be flexible regarding our pricing rules.

## Pre-requisites (running locally)

- Ruby >= 3.0.0

### Dependencies instalation

It's simple ruby application with small set of dependencies that can be installed using the following command:

```bash
bundle install
```

## Running the application

The application has a simple CLI interface, to run it you can use the following command:
```bash
ruby lib/cli.rb
```

## Running the tests
To run the tests, you can use the following command:
```bash
bundle exec rspec
```
## Using Docker

You can use Docker build the image, create and run a container with the application:

```bash
docker build -t check-out . && docker run -it check-out
```

Now inside the container we can run the tests or the application with the commands
aforementioned.


## Project structure

The application consists of the following structure:

- **lib/check-out**: Represents the set of avaliable Objects such: Basket, Coffee and the other products.

- **lib/services**: Defines all the actions that can be done with the defined objects such as create a basket and calculate the final price of a basket.

## CLI
The CLI has 5 options:
 - Create a new basket: Create a new basket from a list of product codes.
 - Calculate final price: Calculate the final price with discounts of a basket.
 - Add products to the basket: Add new products to the current basket.
 - Remove products to the basket: Remove existing products from the current basket.
 - Exi
