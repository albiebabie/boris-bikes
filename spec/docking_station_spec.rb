require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'docking bike at station' do
    is_expected.to respond_to(:dock).with(1).argument
  end

  describe '#dock' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to include bike
    end
    it 'should raise an error if no space' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error('No spaces available')
    end
  end

  it { is_expected.to respond_to(:bikes) }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include bike
  end

  describe 'setting capacity' do
    it "has a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe '#release_bike' do
    it 'releases working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(bike).to be_working
    end

    it 'should raise' do
      expect { subject.release_bike }.to raise_error('Bike Unavailable!')
    end
  end
end
