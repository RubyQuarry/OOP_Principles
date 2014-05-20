=begin
This is an example of good object oriented inheritance because of
the reduced coupling between the superclass Bicycle and its
subclasses.  Instead of the subclasses calling the superclass,
the superclass uses the inheritance model to default but also
take advantage of the subclasses overloaded methods.

For instance, the post_initialize method can be used to add on
to the the classes traits while also gaining the superclasses
traits.
=end

class Bicycle
  attr_reader :size,:chain,:tire_size

  #All of these argumnets are included in a bike.
  def initialize(args = {})
    @size = args.fetch(:size, 0)
    @chain = args.fetch(:chain, default_chain)
    @tire_size = args.fetch(:tire_size, default_tire_size)
    post_initialize(args)

  end

  #subclasses may override
  def post_initialize(args)
    nil
  end

  def spares
    {tire_size: @tire_size,
    chain: @chain}.merge(local_spares)
  end

  def local_spares
    {}
  end


  #Error if subclass does not implement default.
  def default_tire_size
    raise NotImplementedError,
          "This #{self.class} cannot respond to default tire size"
  end

end


class RoadBike < Bicycle

  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args.fetch(:tape_color, "white")
  end

  def local_spares
    {tape_color: @tape_color}
  end

  def default_chain
    "10-Speed"
  end


  def default_tire_size
    2.1
  end

end


class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock


  def post_initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]

  end

  def local_spares
    {rear_shock: @rear_shock}
  end

  def default_tire_size
    '2.1'
  end
end

road = RoadBike.new({size: 12,tape_color: "blue",tire_size: 3.0})

puts road.spares

