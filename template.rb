require "benchmark"

t = Benchmark.measure do
  # code goes here
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
