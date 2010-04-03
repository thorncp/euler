require "benchmark"

t = Benchmark.measure do
  sum_square = 0
  sum = 0
  (1..100).each do |x|
    sum_square += x**2
    sum += x
  end
  puts sum**2 - sum_square
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
