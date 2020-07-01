continue = true

for c in 1..1000
  for b in 1..1000
    for a in 1..1000

      total  = a + b + c
      left   = (a*a) + (b*b)
      right  = c*c
      triple = left == right

      break if left > right

      puts "#{a} + #{b} + #{c} = #{total}" if triple

      continue = false if total == 1000 && triple

      break if !continue
    end
    break if !continue
  end
  break if !continue
end

puts "total:  #{a} + #{b} + #{c} = #{total}"
puts "answer: #{a*b*c}"


