# frozen_string_literal: true

class StringCalculator
  DELIMITER_REGEX = /,|\n/

  def add(numbers)
    if numbers[0..1] == '//'
      delimiter = numbers[2]
      return numbers[4..-1].split(delimiter).sum(&:to_i)
    end
    numbers.split(DELIMITER_REGEX).sum(&:to_i)
  end
end
