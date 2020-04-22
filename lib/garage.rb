require_relative 'bike_container'

class Garage
  include BikeContainer
  
  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def unload_bike(bike)
    add_bike(bike)
  end

  def load_bike
    remove_bike
  end

  def fix_bike
     @bikes[-1].fix
  end
end