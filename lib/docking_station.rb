# frozen_string_literal: true

require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike, :docked_bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'No bikes available' if empty?
    @docked_bikes.pop
  end

  def dock_bike(bike)
    raise 'Docking Station Full' if full?
    @docked_bikes.push(bike)
  end

  private

  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.length <= 0
  end
end
