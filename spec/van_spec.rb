require 'van'

describe Van do
  let(:van){described_class.new}
  let(:bike){ double(:bike)}


  describe "#pick_up" do
    it "picks up a broken bike from a docking station" do
      allow(bike).to receive(:working?).and_return false
      subject.pick_up(bike)
      expect(subject.trailer.length).to eq 1
    end
  end
end