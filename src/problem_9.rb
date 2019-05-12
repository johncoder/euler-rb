#!/usr/bin/env ruby
def problem_9(final_value)
  limit = final_value
  a, b = 1, 2

  until final_value == Math.sqrt(a**2 + b**2) + a + b
    if b == limit
      a += 1
      b = a + 1
    elsif b < limit
      b += 1
    else
      raise "No such luck: a=#{a} b=#{b}"
    end
  end

  c = final_value - a - b

  p "a=#{a} b=#{b} c=#{c}"

  if a**2 + b**2 != c**2
    raise "doesn't work"
  end

  return a * b * c
end

p problem_9 1000
