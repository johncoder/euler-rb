#!/usr/bin/env ruby
require "./src/problem_3_table.rb"

def is_prime(n)
  if n == 2
    return true
  end
  result = false
  limit = (n/2.0).ceil
  candidates = (2..limit).to_a
  until candidates.length == 0
    candidate = candidates.shift
    if n % candidate == 0
      result = false
      break
    else
      result = true
    end
  end
  result
end

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

problem_3 600851475143
