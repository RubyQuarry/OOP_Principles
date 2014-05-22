# To prepare for a trip you need to prepare in multiple ways,
# duck typing makes this process painless by having each object
# the trip class can handle implements its own prepare_trip
# method.

class Trip

  attr_reader :bicycles,:customers,:vehicle
  def prepare(preparers)
    preparers.each { |preparer| preparer.prepare_trip(self) }
  end
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each { |bicycle| prepare_bicycle }
  end

  def prepare_bicycle

  end

end

class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(i)
    # code here
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  def gas_up(vehicle)
    # code here
  end

  def fill_water_tank(vehicle)
    # code here
  end
end



