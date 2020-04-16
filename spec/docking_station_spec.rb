# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  let(:subject) { described_class.new(bike) }
  let(:bike){double(:bike)}

  describe '#release_bike' do
    it 'docking station responds to the method release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases a bike' do
      expect(subject.release_bike).to eq(bike)
    end

    it 'releases a working bike' do
      bike = double('bike', { working?: 'true' })
      subject.release_bike
      expect(bike.working?).to eq('true')
    end
  end
end
