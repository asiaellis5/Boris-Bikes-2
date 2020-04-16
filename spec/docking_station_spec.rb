# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  let(:subject) { described_class.new }
  let(:bike){double(:bike)}

  describe "#initialization" do
    
    it "has a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it "allows the capacity to be changed" do
      docking_station = DockingStation.new(40)
      expect(docking_station.capacity).to eq 40
    end
  end

  describe '#release_bike' do
    it 'docking station responds to the method release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases a bike' do
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'releases a working bike' do
      bike = double('bike', { working?: 'true' })
      subject.dock_bike(bike)
      bike1 = subject.release_bike
      expect(bike1.working?).to eq('true')
    end

    it "raises an error when there is no bike to release" do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe "#dock_bike" do
    it "docking station responds to the method dock_bike" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it "docks a bike" do
      subject.dock_bike(bike)
      expect(subject.docked_bikes.length).to eq 1
    end

    it "raises an error if dock is full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(bike) }
      expect{subject.dock_bike(bike)}.to raise_error 'Docking Station Full'
    end
  end
end
