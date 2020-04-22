require 'van'

describe Van do
  let(:van){described_class.new}
  let(:bike){ double(:bike)}


  describe "#pick_up_docking" do
    it "picks up a broken bike from a docking station" do
      allow(bike).to receive(:working?).and_return false
      subject.pick_up_docking(bike)
      expect(subject.bikes.length).to eq 1
    end
  end

  describe "#pick_up_garage" do
    it "picks up a fixed bike from the garage" do
      allow(bike).to receive(:working?).and_return true
      subject.pick_up_garage
      expect(subject.bikes.length).to eq 1
    end
  end

  describe "#drop_off_garage" do
    it "drops off a bike" do 
      allow(bike).to receive(:working?).and_return true
      subject.pick_up_docking(bike)
      subject.drop_off_garage
      expect(subject.bikes.length).to eq 0
    end
  end

  describe "#drop_off_docking" do
    it "drops off a bike" do 
      allow(bike).to receive(:working?).and_return true
      subject.pick_up_garage
      subject.drop_off_docking
      expect(subject.bikes.length).to eq 0
    end
  end
end