require 'test-unit'
require_relative 'bicycle'

class MyTest < Test::Unit::TestCase

  attr_reader :road,:defaultBike,:mountainBike

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

    bikeSizes = {size: 12,tire_size: 3.0}
    @road = RoadBike.new(bikeSizes.merge({tape_color: "blue"}))
    @mountainBike = MountainBike.new(bikeSizes.merge({front_shock: 20,rear_shock: 30}))

  #  @mountain_bike = MountainBike.new({})


  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
    # Do nothing
  end

  def test_road_bike
    assert_equal(3.0,@road.tire_size)
    assert_equal("blue",@road.tape_color)
  end

  def test_mountain_bike
    assert_equal(20,@mountainBike.front_shock)
    assert_equal(30,@mountainBike.rear_shock)

  end


end