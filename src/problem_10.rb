#!/usr/bin/env ruby
require "./src/util/prime.rb"

def problem_10
  current = 0
  primes = 0
  sample = 200
  sum = 0

  until current >= 2000000
    if PrimeNumbers::is_prime current
      sum += current
      primes += 1
    end
    if current % sample == 0
      p "#{current} (#{primes} primes, #{sum} sum)"
    end
    current += 1
  end

  sum
end

p problem_10
