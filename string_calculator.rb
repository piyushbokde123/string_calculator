class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?
  
      delimiter = ","
      if numbers.start_with?("//")
        delimiter = numbers[2]
        numbers = numbers.split("\n")[1]
      end
  
      numbers = numbers.split(/#{delimiter}|\n/).map(&:to_i)
      negative_numbers = numbers.select { |num| num < 0 }
      if negative_numbers.any?
        raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
      end
  
      numbers.sum
    end
  end
