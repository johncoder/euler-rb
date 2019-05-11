def problem_6
  first_n = 101
  sum = 0
  sum_sq = 0
  first_n.times.each do |n|
    sum += n
    sum_sq += n**2
  end
  (sum**2) - sum_sq
end
p problem_6
