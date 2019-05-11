#!/usr/bin/env ruby
def problem_4
  left = 999
  right = 999
  while left != 0 and right != 0
    result = (left * right).to_s
    first, rest = result.chars.each_slice(3).to_a
    if first == rest.reverse
      break
    else
      if left < right
        right = left
      else
        left -= 1
      end
    end
  end

  return left, right # , left * right
end
