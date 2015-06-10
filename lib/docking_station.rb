#! usr/bin/env ruby

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes found' if empty?
    @bikes.pop
  end

  def dock bike
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end
