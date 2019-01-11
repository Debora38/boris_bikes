require_relative 'bike'

class DockingStation

  attr_reader :bike_arr

  DEFAULT_CAPACITY = 20

  def initialize
    @bike_arr = []
  end

  def release_bike
    if empty?
      raise 'No bikes left'
    else
      @bike_arr.pop
    end
  end

  def dock(bike)
    if full?
      raise "Already full"
    else
      @bike_arr << bike
    end
  end

  def full?
    @bike_arr.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bike_arr.count == 0
  end
end
