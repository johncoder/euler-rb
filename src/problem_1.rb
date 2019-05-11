#!/usr/bin/env ruby
def problem_1(limit)
  numbers = (1..limit).to_a
  multiples = numbers.filter do |n|
    (n % 3 == 0 or n % 5 == 0) ? n : nil
  end
  multiples.sum
end
p problem_1 10
p problem_1 1000
