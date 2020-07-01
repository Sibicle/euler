module Euler
  module Problem
    class Five
      def self.putsf(str)
        print str
        $stdout.flush
      end

      def run
        num = 21
        putsf "000000 "
        loop do
          putsf ". " if num % 10000 == 0
          putsf "\n#{num} " if num % 100000 == 0

          hit = true
          (1..15).each do |i|
            if num % i != 0
              hit = false
              break
            end
          end

          hit ? break : num += 1
        end

        puts "\n#{num}"
      end
    end
  end
end
