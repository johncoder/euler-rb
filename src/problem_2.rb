#!/usr/bin/env ruby
def problem_2
  prev = 1
  curr = 2
  def even?(n)
    n % 2 == 0
  end
  total = 2
  while curr < 4000000
    pprev = prev
    prev = curr
    curr = pprev + prev
    if even? curr
      total += curr
    end
  end
  total
end
problem_2
