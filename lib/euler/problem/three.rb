module Problem
  class Three
    def self.run
      num     = 600851475143
      factor  = 3
      factors = []

      while factor <= num do
        if num % factor == 0
          factors.push factor
          num /= factor
        end
        factor += 1
      end

      puts factors.max
    end
  end
end
