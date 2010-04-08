require "benchmark"

t = Benchmark.measure do
  def divisors(n)
    (1..n).select { |x| n % x == 0 }
  end

  n = 0
  t = 0

  until divisors(t).length > 500 do
    n += 1
    t += n
  end
  puts t
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
