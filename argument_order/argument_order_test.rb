require 'test-unit'
require_relative 'argument_order_dependencies'

class MyTest < Test::Unit::TestCase

  attr_reader :arg_orders

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
    @arg_orders = ArgumentOrderDependencies.new({ :name => "aj", :birthPlace => "New York" })
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing.
  end

  def test_attributes
    assert_equal("aj", @arg_orders.name)
    assert_equal("New York",@arg_orders.birthPlace)
    assert_equal(true,@arg_orders.isMale)
    assert_equal(0, @arg_orders.age)
  end
end