require_relative 'garage'

class Van

  attr_reader :trailer, :garage

  def initialize(garage = Garage.new)
    @trailer = []
    @garage = garage
  end

  def pick_up_docking(bike)
    @trailer.push(bike)
  end

  def pick_up_garage
    @trailer.push(@garage.load_bike)
  end

  def drop_off_garage
   @garage.unload_bike(@trailer.pop)
  end

  def drop_off_docking
    @trailer.pop
  end

end