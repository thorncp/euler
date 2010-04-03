require "benchmark"

t = Benchmark.measure do
  def divisors(n)
    (2..Math.sqrt(n)).select { |x| n % x == 0 }
  end
  
  def prime?(n)
    divisors(n).empty?
  end
  
  n = 2_000_000
  
  puts (2..n).select{|x| prime? x}.inject(:+)
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
