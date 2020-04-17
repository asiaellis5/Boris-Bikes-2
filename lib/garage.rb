require_relative 'van'

class Garage

  attr_reader :workshop

  def initialize()
    @workshop = []
  end

  def unload_bike(bike)
    @workshop.push(bike)
  end

  def load_bike
    @workshop.pop
  end

  def fix_bike
     @workshop[-1].fix
  end
end