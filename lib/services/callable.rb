# frozen_string_literal: true

# small module to be able to use call directly, .cal(), instead of doing .new().call
# in a real life application more robust things can be used
# like the gem mandate
module Callable
  def call(*args)
    new(*args).call
  end
end
