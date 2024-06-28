require 'pry'

class Calculator
  def add(input_string)
    if input_string.start_with?("//")
      find_delimiter = input_string.match(/^\/\/(.*?)\n/)
      number_string = input_string.split("\n", 2)[1]
    elsif input_string.start_with?("//[")
      find_delimiter = input_string.macth(/\[(.*?)\]/)
      number_string = input_string.split("\n", 2)[1]
    else
      number_string = input_string
    end

    delimiter = find_delimiter ? find_delimiter[1] : nil

    delimiter_regex = "[,\n#{delimiter}]"

    regex = Regexp.new(delimiter_regex)

    numbers = number_string.split(regex).reject(&:empty?)

    result = 0
    negative_numbers = []

    numbers.each do |n|
      if n.to_i < 0
        negative_numbers << n.to_i
      else
        next if n.to_i > 1000
        result = result + n.to_i
      end
    end

    unless negative_numbers.empty?
      raise StandardError.new("negative numbers not allowed #{negative_numbers.join(",")}")
    end

    return result
  end
end
