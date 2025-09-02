# frozen_string_literal: true

class StringCalculator
  DELIMITER_REGEX = /,|\n/

  def add(numbers)
    numbers.split(DELIMITER_REGEX).sum(&:to_i)
  end
end
