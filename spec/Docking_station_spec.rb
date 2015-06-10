require './lib/docking_station'

describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases new bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'will dock a bike if it is not at full capacity' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe 'dock' do
    it 'raises an error when full' do
      subject.capacity.times {subject.dock Bike.new}
      expect {subject.dock Bike.new}.to raise_error 'Docking station full'
    end
  end

  describe 'release_bike' do
    it 'raises an error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes found'
    end

    it 'raises an error when there are is one broken bike ' do
      bike1 = Bike.new
      subject.dock bike1
      bike1.report_broken
      expect{subject.release_bike}.to raise_error 'bike is broken'
    end
  end

  it 'has a default capacity' do
    #puts DockingStation::DEFAULT_CAPACITY
    expect(subject.capacity).to eq DockingStation.new.capacity
  end

end
