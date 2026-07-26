class AssemblyLine

  MIN_CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def success_rate
    if @speed == 10
      return 0.77
    end
    if @speed == 9
      return 0.8
    end
    if @speed in 5..8
      return 0.9
    end
    if @speed in 1..4
      return 1 
    end

    nil
  end

  def production_rate_per_hour
    ideal_production = MIN_CARS_PER_HOUR * @speed
    (ideal_production * success_rate).to_f
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
