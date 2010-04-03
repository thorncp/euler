require "benchmark"

t = Benchmark.measure do
  def doit(n)
    (1..n).each do |a|
      (a..n).each do |b|
        if Math.sqrt(a**2 + b**2) + a + b == n
          c = n - a - b
          return a * b * c
        end
      end
    end
  end
  
  puts doit(1000)
end

puts "execution took longer than 1 minute! (#{t.real})" if t.real > 60
