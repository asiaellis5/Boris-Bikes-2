require 'garage'

describe Garage do

  let(:subject){described_class.new}
  let(:bike){ double(:bike) }

  describe "#unload_bike" do
    it "unloads a bike into the garage" do
    subject.unload_bike(bike)
    expect(subject.workshop.length).to eq 1
    end
  end

  describe "#fix_bike" do
    it "fixes a bike" do
      allow(bike).to receive(:working?).and_return true
      allow(bike).to receive(:fix)
      subject.unload_bike(bike)
      subject.fix_bike
      expect(bike.working?).to eq true
    end
  end

  describe "#load_bike" do
    it "loads a bike on to a van" do
      subject.load_bike
      expect(subject.workshop.length).to eq 0
    end
  end
end