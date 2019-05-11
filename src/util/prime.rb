module PrimeNumbers
  def PrimeNumbers.is_prime(n)
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
end
