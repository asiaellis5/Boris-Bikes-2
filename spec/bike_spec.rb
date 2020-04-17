require 'bike'

describe Bike do
  let(:subject) { described_class.new }

  describe '#working?' do
    it 'bike responds to working?' do
      expect(subject).to respond_to :working?
    end

    it 'evaluates to true when bike is working' do
      expect(subject.working?).to be true
    end
  end

  describe "#report_broken" do
    it "flags a broken bike" do
      subject.report_broken
      expect(subject.working?).to be false
    end
  end

  describe "#fix" do
    it "fixes a bike" do
      subject.report_broken
      subject.fix
      expect(subject.working?).to be true
    end
  end
end
