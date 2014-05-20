require 'test-unit'


require_relative 'real_wheel'

class MyTest < Test::Unit::TestCase


  attr_reader :gear,:wheel
  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @wheel = Wheel.new(26,1.5)
    @gear = Gear.new(52,11,@wheel)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_wheel_circumference
    assert_in_delta(91.1,wheel.circumference,0.05)
  end

  def test_wheel_diameter
    assert_in_delta(29,wheel.diameter,0.05)
  end
end