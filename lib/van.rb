require_relative 'garage'
require_relative 'bike_container'

class Van
  include BikeContainer

  DEFAULT_CAPACITY = 20

  attr_reader :bikes


  def pick_up(bike)
    add_bike(bike)
  end


  def drop_off
    remove_bike
  end

end