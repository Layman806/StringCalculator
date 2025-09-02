# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    sum = 0
    numbers.split(',').each do |number|
      sum += number.to_i
    end
    sum
  end
end
