# frozen_string_literal: true

require_relative 'bike'

class DockingStation

  attr_reader :bike, :docked_bikes

  def initialize()
    @docked_bikes = []
  end

  def release_bike
    raise 'No bikes available' if @docked_bikes.length <= 0
    @docked_bikes.pop
  end

  def dock_bike(bike)
    @docked_bikes.push(bike)
  end
end
