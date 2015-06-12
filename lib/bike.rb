class Bike

  def initialize
    @broken = false
  end

  def working?
    !@broken
  end

  def report_broken
    @broken = true
    @working
  end

  def broken?
    @broken
  end

end
