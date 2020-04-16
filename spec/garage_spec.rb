require 'garage'

describe Garage do

  let(:subject){described_class.new}
  let(:bike){ double(:bike) }

  describe "#fix_bike" do
    it "fixes a bike" do
      allow(bike).to receive(:working?).and_return true
      subject.fix_bike(bike)
      expect(bike.working?).to eq true
    end
  end
end