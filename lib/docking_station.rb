#! usr/bin/env ruby

class DockingStation

  attr_reader :capacity
  attr_accessor :capacity

  def initialize(capacity=20)
    @bikes = []
    @capacity = capacity
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

  attr_reader :bikes

  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end
end
