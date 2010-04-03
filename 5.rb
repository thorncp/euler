require "benchmark"

t = Benchmark.measure do
  x = (1..20).to_a
  it = 1
  until x.all? {|n| it % n == 0}
    it += 1
  end
  puts it
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
