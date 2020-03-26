class Two
  def self.run
    n0 = 1
    n = total = 2

    while n < 4000000 do
      temp = n
      n += n0
      n0 = temp

      total += n if n % 2 == 0
    end

    puts total
  end
end
