require 'test-unit'
require_relative 'bicycle'

class MyTest < Test::Unit::TestCase

  attr_reader :road,:defaultBike

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @road = RoadBike.new({size: 12,tape_color: "blue",tire_size: 3.0})
    @defaultBike = RoadBike.new({})

  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
    # Do nothing
  end

  def test_tire_size
    assert_equal(3.0,road.tire_size)
  end

  def test_default_tire_size
    assert_equal(2.1,@defaultBike.tire_size)
  end
end