# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    numbers.split(',').sum(&:to_i)
  end
end
