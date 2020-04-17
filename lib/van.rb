require_relative 'garage'

class Van

  attr_reader :trailer

  def initialize(garage = Garage.new)
    @trailer = []
    @garage = garage
  end

  def pick_up(bike)
    @trailer.push(bike)
  end

  def drop_off
   @garage.unload_bike(@trailer.pop)
  end

end