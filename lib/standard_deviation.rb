ages = [24, 30, 18, 20, 41]

def standard_deviation(ages)
  sum = ages.sum.to_f
  mean = sum / ages.size
  result1 = ages.map {|age| (age - mean).round(1)}
  result2 = result1.map {|num| (num ** 2).round(2)}
  sum2 = result2.sum
  result3 = sum2 / ages.size
  Math.sqrt(result3).round(2)
end
