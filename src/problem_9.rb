#!/usr/bin/env ruby
def problem_9(final_value)
  limit = 100000
  attempts = 1
  a, b = 1, 2

  until final_value == Math.sqrt(a**2 + b**2) + a + b
    if 2 * b + a < final_value
      b += 1
    elsif a + b >= final_value - a - b
      a += 1
      b = a + 1
    end

    attempts += 1
    if a >= (final_value / 3) or attempts > limit
      raise "No such luck: a=#{a} b=#{b}, attempts=#{attempts}"
    end
  end

  c = final_value - a - b

  p "a=#{a} b=#{b} c=#{c}, attempts=#{attempts}"

  # NOTE(john): A little self doubt
  if a**2 + b**2 != c**2
    raise "doesn't work"
  end

  return a * b * c
end

p problem_9(3 + 4 + 5)
p problem_9 1000
# p problem_9 1096  # fails after 99919 attempts
