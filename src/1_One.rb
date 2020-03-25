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
end
