class Bicycle
  attr_reader :size,:chain,:tire_size

  def initialize(args = {})
    @size = args.fetch(:size, 0)
    @chain = args.fetch(:chain, default_chain)
    @tire_size = args.fetch(:tire_size, default_tire_size)

  end

  #Error if subclass does not implement default.
  def default_tire_size
    raise NotImplementedError,
          "This #{self.class} cannot respond to default tire size"
  end

end


class RoadBike < Bicycle

  attr_reader :tape_color
  def initialize(args)
    @tape_color = args.fetch(:tape_color, "white")
    super(args)

  end

  def default_chain
    "10-Speed"
  end


  def default_tire_size
    2.1
  end


end

road = RoadBike.new({size: 12,tape_color: "blue",tire_size: 3.0})

puts road.tire_size

