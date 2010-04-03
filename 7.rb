require "benchmark"

t = Benchmark.measure do
  def divisors(n)
    (2..Math.sqrt(n)).select { |x| n % x == 0 }
  end
  
  def prime?(n)
    divisors(n).empty?
  end
  
  primes = []
  i = 2
  until primes.length == 10001
    primes << i if prime?(i)
    i += 1
  end
  puts primes.last
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
