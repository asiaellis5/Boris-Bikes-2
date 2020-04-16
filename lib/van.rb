class Van

  attr_reader :trailer

  def initialize
    @trailer = []
  end

  def pick_up(bike)
    @trailer.push(bike)
  end

end