# frozen_string_literal: true

class StringCalculator
  DEFAULT_DELIMITER_REGEX = /,|\n/
  CUSTOM_DELIMITER_REGEX = %r{\A//(?:(\[(.+?)\])+|(.*))\n(.*)\z}m

  def parse_input(string)
    return DEFAULT_DELIMITER_REGEX, string unless string.start_with?('//')

    match_data = CUSTOM_DELIMITER_REGEX.match(string)
    delimiters = string.include?("[") ? string.scan(/\[(.+?)\]/).flatten : match_data[3]
    delimiters = Regexp.new(Array(delimiters).map { |d| Regexp.escape(d) }.join("|"))

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
