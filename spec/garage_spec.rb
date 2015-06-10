require './lib/garage'
require_relative 'bike_container_spec'

describe Garage do
  it_behaves_like BikeContainer

  it 'fixes broken bikes' do
    bike = double :bike
    subject.add_bike bike
    expect(bike).to recieve :fix
    subject.fix_bikes
  end
end
