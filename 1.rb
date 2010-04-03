require "benchmark"

t = Benchmark.measure do
  sum = (1...1000).inject(0) do |sum, x|
    (x % 3 == 0 || x % 5 == 0) ? sum + x : sum
  end
  
  puts sum
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
