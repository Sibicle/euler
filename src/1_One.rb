class One
  def self.run
    total = 0
    for i in 0..999 do
      if i % 3 == 0 || i % 5 == 0
        total += i
      end
    end

    puts total
  end

  def self.run_two
    numbers = []
    threes = fives = 0
    while fives < 1000 do
      numbers.push fives
      fives += 5
    end

    while threes < 1000 do
      numbers.push threes unless numbers.include? threes
      threes += 3
    end

    # puts numbers.sum
  end
end
