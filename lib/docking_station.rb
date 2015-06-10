#! usr/bin/env ruby

require_relative 'bike'
require_relative 'bike_container'

class DockingStation

  include BikeContainer

  def release_bike
    fail 'No bikes found' if working_bikes.empty?
    bikes.delete working_bikes.pop
  end

  def dock bike
    add_bike bike
  end

  private

  def working_bikes
    bikes.reject { |bike| bike.broken? }
  end

end
