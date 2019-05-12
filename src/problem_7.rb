#!/usr/bin/env ruby
require "./src/util/prime.rb"

def problem_7
  value = 0
  count = 0
  until count == 10001
    value += 1
    if PrimeNumbers::is_prime value
      count += 1
    end
  end
  value
end

p problem_7
