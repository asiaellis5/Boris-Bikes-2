require 'bike'

describe Bike do
  let(:subject){described_class.new}

  describe "#working?" do
    it "bike responds to working?" do
      expect(subject).to respond_to :working?
    end

    it "evaluates to true when bike is working" do
      expect(subject.working?).to be true
    end

  end
end