# frozen_string_literal: true

require_relative 'bike'

class DockingStation

  def initialize(bike = Bike.new)
    @bike = bike
  end

  def release_bike
    @bike
  end
end
