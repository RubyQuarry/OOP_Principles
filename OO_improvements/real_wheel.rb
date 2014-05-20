#The Wheel class is now passed into Gear for the
# gear_inches() calculation.

class Gear

  attr_reader :chainring ,:cog, :wheel

  def initialize(chainring,cog, wheel = nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end


  #Public: returns the ratio of the chainring to the cog.
  def ratio
    chainring / cog.to_f
  end

  #Public: calculates the length of the gear.
  def gear_inches
    ratio * wheel.diameter
  end

end


class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + tire*2
  end

  def circumference
    diameter * Math::PI
  end
end
