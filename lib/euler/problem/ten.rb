max  = 2000000
sieve  = [*0..max]

sieve[0] = sieve[1] = nil

counter = 0
sieve.each do |p|
  next unless p
  break if p*p > max
  counter += 1
  (p*p).step(max,p) { |m| sieve[m] = nil }
end

puts sieve.compact.sum


