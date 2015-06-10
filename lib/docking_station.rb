#! usr/bin/env ruby

class DockingStation
  def release_bike
    fail 'No bikes found' unless @bike
    @bike
  end

  def dock bike
    fail 'Docking station full' if @bike
    @bike = bike
  end
end
