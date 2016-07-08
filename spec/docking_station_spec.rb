require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'docking bike at station' do
    is_expected.to respond_to(:dock).with(1).argument
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:bike)}

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'should raise' do
    docking_station = DockingStation.new
    expect{subject.release_bike}.to raise_error("Bike Unavailable!")
  end
end
