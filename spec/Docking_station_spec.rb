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

  describe 'release_bike' do
    it 'raises an error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes found'
    end
  end

end
