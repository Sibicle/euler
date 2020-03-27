class Four
  def self.run
    two = 100
    max = 0

    while two < 1000
      one = 100

      while one < 1000
        num = one * two
        fwd = num.to_s
        rev = fwd.reverse

        if fwd == rev && num > max
          max = num
        end

        one += 1
      end
      two += 1
    end

    puts max
  end
end
