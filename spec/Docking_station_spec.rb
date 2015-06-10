require './lib/docking_station'

describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases new bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'will dock a bike if it is not at full capacity' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

end
