#!/usr/bin/env ruby
def problem_5(low, high)
  all_factors = (low..high).to_a.reverse
  factors = []
  until all_factors.length == 0
    factor = all_factors.shift
    implied = all_factors.filter do |f|
      factor % f == 0
    end
    all_factors = all_factors - implied
    factors << factor
  end

  # NOTE(john): Arbitrary?
  attempts = 1000000000000
  result = 1
  until result > attempts
    all_common_factors = factors.all? do |factor|
      result % factor == 0
    end

    if not all_common_factors
      result += 1
    else
      break
    end
  end
  result
end

p problem_5 1, 10
