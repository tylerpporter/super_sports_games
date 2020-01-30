class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    (@ages.sum.to_f) / @ages.size
  end

  def standard_deviation_age(ages = @ages)
    sum = ages.sum.to_f
    mean = sum / ages.size
    result1 = ages.map {|age| (age - mean).round(1)}
    result2 = result1.map {|num| (num ** 2).round(2)}
    sum2 = result2.sum
    result3 = sum2 / ages.size
    Math.sqrt(result3).round(2)
  end
end
