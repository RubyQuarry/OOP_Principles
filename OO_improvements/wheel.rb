=begin
This class demonstrates good OO principles by not relying on the array
presented to the user except in only one method instead of the whole
class.
=end
class Gear

  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end


  def diameters
    @wheels.map { |wheel| diameter wheel }
  end

  private #all methods below are private

=begin
A Struct is a convenient way to bundle a number of attributes together,
using accessor methods, without having to write an explicit class.
=end
  Wheel = Struct.new(:rim,:tire)

  def wheelify(data)
    data.map { |item| Wheel.new(item[0],item[1]) }
  end


  def diameter(wheel)
    (wheel.rim + wheel.tire * 2)
  end
end

