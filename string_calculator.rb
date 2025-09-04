# frozen_string_literal: true

class StringCalculator
  DEFAULT_DELIMITER_REGEX = /,|\n/
  CUSTOM_DELIMITER_REGEX = /\/\/(?:(\[(.+?)\])+|(.))\n(.*)/

  def parse_input(string)
    return DEFAULT_DELIMITER_REGEX, string unless string[0..1] == '//'

    match_data = CUSTOM_DELIMITER_REGEX.match(string)
    delimiters = string.include?("[") ? string.scan(/\[(.+?)\]/).flatten : match_data[3]
    delimiters = Regexp.new(delimiters.map { |d| Regexp.escape(d) }.join("|")) if delimiters.is_a?(Array)

    [delimiters, match_data[-1]]
  end

  def check_for_negative_numbers!(number_list)
    negative_numbers = number_list.filter{ |num| num < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(',')}" unless negative_numbers.empty?
  end

  def add(numbers)
    delimiter, input_string = parse_input(numbers)
    numbers_list = input_string.split(delimiter).map(&:to_i)
    check_for_negative_numbers!(numbers_list)

    numbers_list.select { |num| num <= 1000}
                .sum
  end
end
