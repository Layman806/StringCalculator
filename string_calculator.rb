# frozen_string_literal: true

class StringCalculator
  DELIMITER_REGEX = /,|\n/

  def delimiter(string)
    return string[2] if string[0..1] == '//'
    DELIMITER_REGEX
  end

  def add(numbers)
    numbers.split(delimiter(numbers)).sum(&:to_i)
  end
end
