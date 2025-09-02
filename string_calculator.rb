# frozen_string_literal: true

class StringCalculator
  DELIMITER_REGEX = /,|\n/

  def delimiter(string)
    return string[2] if string[0..1] == '//'
    DELIMITER_REGEX
  end

  def add(numbers)
    numbers_list = numbers.split(delimiter(numbers)).map(&:to_i)
    negative_numbers = numbers_list.filter { |num| num < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(',')}" unless negative_numbers.empty?

    numbers_list.sum
  end
end
