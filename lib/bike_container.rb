module BikeContainer
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def add_bike(bike)
    raise "#{self.class.name} full" if full?
    @bikes.push(bike)
  end

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.length <= 0
  end

  private

  attr_reader :bike

end