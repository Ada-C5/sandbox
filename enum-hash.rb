scores = {
  jeremy: [10, 20, 34, 55, 86],
  been:   [11, 27, 95, 45, 33],
  raquel: [15, 54, 23, 22, 57],
  rosa:   [5, 3, 7, 77, 34]
}

# Who has the single highest score (and what is that score)? 
most = scores.max_by do |name, results|
  results.max
end
puts "Highest Score: ", most[0], most[1].max

# Who has the highest *average* score (and what is that average)?
# Average is the sum of scores divided by the number of scores
avg = scores.max_by do |name, results|
  results.reduce(0, :+) / results.length.to_f
end
puts "Highest Average: ", avg[0], (avg[1].reduce(0, :+)/avg[1].length.to_f)

# Who has the biggest difference between their highest and lowest score
# (and what is that difference)?
diff = scores.max_by do |name, results|
  results.max - results.min
end
puts "Biggest Difference: ", diff[0], diff[1].max - diff[1].min
