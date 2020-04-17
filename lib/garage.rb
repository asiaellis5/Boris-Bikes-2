class Garage

  attr_reader :workshop

  def initialize
    @workshop = []
  end

  def unload_bike(bike)
    @workshop.push(bike)
  end

  def fix_bike
     @workshop[-1].fix
  end
end