require "benchmark"

t = Benchmark.measure do
  x = (100..999).to_a
  y = []
  x.each do |a|
    x.each do |b|
      y << a * b
    end
  end
  y = y.flatten.uniq.sort
  puts y.at y.rindex {|n| n.to_s == n.to_s.reverse}
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
