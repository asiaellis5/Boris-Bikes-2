require_relative 'garage'

class Van

  attr_reader :trailer

  def initialize(garage = Garage.new)
    @trailer = []
    @garage = garage
  end

  def pick_up(bike)
    @garage.fix_bike(bike)
    @trailer.push(bike)
  end

  def drop_off
    @trailer.pop
  end

end