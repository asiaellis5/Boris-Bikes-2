# frozen_string_literal: true

require_relative 'bike'
require_relative 'van'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :docked_bikes, :capacity, :van

  def initialize(capacity = DEFAULT_CAPACITY, van= Van.new)
    @docked_bikes = []
    @capacity = capacity
    @van = van
  end

  def release_bike
    raise 'No bikes available' if empty?
    if broken?
      @van.pick_up_docking(@docked_bikes.pop)
      raise 'Sorry bike broken'
    else
      @docked_bikes.pop
    end
   
  end

  def dock_bike(bike)
    raise 'Docking Station Full' if full?
    @docked_bikes.push(bike)
  end

  def dock_fixed_bike
    @docked_bikes.push(@van.drop_off_docking)
  end

  private

  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.length <= 0
  end

  def broken?
    !@docked_bikes[-1].working?
    
   
  end
end
