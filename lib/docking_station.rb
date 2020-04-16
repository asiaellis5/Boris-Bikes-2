# frozen_string_literal: true

require_relative 'bike'

class DockingStation

  attr_reader :docked_bikes

  def initialize(bike = Bike.new)
    @bike = bike
    @docked_bikes = []
  end

  def release_bike
    @bike
  end

  def dock_bike(bike)
    @docked_bikes.push(bike)
  end
end
