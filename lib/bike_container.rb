module BikeContainer
  DEFAULT_CAPACITY = 10

  def bikes
    @bike ||=[]
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def store(bike)
    raise "I'm full!" if full?
    bikes << bike
  end

  def release(bike)
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.select { |bike| bike.working? }
  end

  def broken_bikes
    bikes.select { |bike| bike.broken? }
  end

end