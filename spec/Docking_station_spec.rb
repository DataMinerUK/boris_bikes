require './lib/docking_station'

describe 'docking_station' do

  it 'returns docking station instance' do
    expect(DockingStation.new.class).to eq DockingStation
  end

end
