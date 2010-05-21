require "benchmark"

t = Benchmark.measure do
  def the_method(val, cnt = 1)
    return cnt if val == 1
    if val.even?
      the_method(val / 2, cnt + 1)
    else
      the_method(3 * val + 1, cnt + 1)
    end
  end
  
  puts (1..1_000_000).max_by{|i| the_method(i)}
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
