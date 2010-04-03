require "benchmark"

t = Benchmark.measure do
  x = [1,2]
  while x.last < 4_000_000
    x << x[-2] + x.last
  end
  sum = x.inject(0) do |sum, e|
    e.even? ? sum + e : sum
  end
  puts sum
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
