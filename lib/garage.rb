require_relative 'van'

class Garage

  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def unload_bike(bike)
    @bikes.push(bike)
  end

  def load_bike
    @bikes.pop
  end

  def fix_bike
     @bikes[-1].fix
  end
end