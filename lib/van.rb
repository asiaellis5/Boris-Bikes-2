require_relative 'garage'

class Van

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :garage, :capacity

  def initialize(garage = Garage.new, capacity= DEFAULT_CAPACITY)
    @bikes = []
    @garage = garage
    @capacity = capacity
  end

  def pick_up_docking(bike)
    @bikes.push(bike)
  end

  def pick_up_garage
    @bikes.push(@garage.load_bike)
  end

  def drop_off_garage
   @garage.unload_bike(@bikes.pop)
  end

  def drop_off_docking
    @bikes.pop
  end

end