require './lib/docking_station'
require './lib/bike_container'
require_relative 'bike_container_spec'

describe DockingStation do

  it_behaves_like BikeContainer

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    bike = double :bike, broken?: false
    subject.dock bike
    expect(subject.release_bike).to be bike
  end

  it 'will dock a bike if it is not at full capacity' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe 'dock' do
    it 'raises an error when full' do
      subject.capacity.times {subject.dock double :bike}
      expect {subject.dock double :bike}.to raise_error 'DockingStation full'
    end
  end

  describe 'release_bike' do
    it 'raises an error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes found'
    end

    it 'raises an error when there are is one broken bike ' do
      bike = double :bike, broken?: true
      subject.dock bike
      expect{subject.release_bike}.to raise_error 'No bikes found'
    end
  end

  it 'has a default capacity' do
    #puts DockingStation::DEFAULT_CAPACITY
    expect(subject.capacity).to eq DockingStation.new.capacity
  end

  describe 'release_broken_bike' do
    it 'fails if there are no broken bikes' do
      expect{subject.load_van}.to raise_error 'No broken bikes'
    end

    it 'releases a a broken bike' do
      bike = double :bike, broken?: true
      subject.dock bike
      expect(subject.load_van).to be bike

    end

  end

end
