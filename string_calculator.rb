# frozen_string_literal: true

class StringCalculator
  DELIMITER_REGEX = /,|\n/

  def delimiter(string)
    return string[2] if string[0..1] == '//'
    DELIMITER_REGEX
  end

  def extract_numbers(string)
    string.split(delimiter(string))
          .map(&:to_i)
          .select{ |num| num <= 1000 }
  end

  def check_for_negative_numbers!(number_list)
    negative_numbers = number_list.filter{ |num| num < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(',')}" unless negative_numbers.empty?
  end

  def add(numbers)
    numbers_list = extract_numbers(numbers)
    check_for_negative_numbers!(numbers_list)

    numbers_list.sum
  end
end
