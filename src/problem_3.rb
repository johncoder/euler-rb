#!/usr/bin/env ruby
require "./src/problem_3_table.rb"

def problem_3(value)
  remainder = value
  factors = []
  primes = PrimeTable::Primes.map(&:dup)
  until primes.length == 0
    prime = primes.shift
    if prime <= remainder and remainder % prime == 0
      remainder /= prime
      factors.push prime
    end
  end
  factors
end

p problem_3 600851475143
