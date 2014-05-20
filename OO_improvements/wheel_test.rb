require 'test-unit'
require_relative 'wheel'

#Test for wheel class.
class WheelTest < Test::Unit::TestCase

  attr_reader :wheels,:diameter_array

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @diameter_array = [[12,34],[55,54]]
    @wheels = Gear.new(diameter_array)



  end

  # Called after every test method runs. Can be used to tear
  # down fixture information..

  def teardown
    @diameter_array.clear
  end


  def test_diameter
   assert_equal([80,163],@wheels.diameters)
  end
end