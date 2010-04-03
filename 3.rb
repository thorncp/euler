require "benchmark"

t = Benchmark.measure do
  cutoff = 600851475143
  
  def divisors(n)
    (2..Math.sqrt(n)).select { |x| n % x == 0 }
  end
  
  def prime?(n)
    divisors(n).empty?
  end
  
  d = divisors(cutoff)
  d += d.map {|x| cutoff / x }
  puts d.at d.rindex {|x| prime? x}
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
