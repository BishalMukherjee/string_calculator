class Calculator
  def add(input_string)
    delimiter_string = input_string.match(/^\/\/(.*?)\n/)
    given_delimiter = delimiter_string ? delimiter_string[1] : nil
    delimiter_regex = "[,\n#{given_delimiter}]"

    regex = Regexp.new(delimiter_regex)

    numbers = input_string.split(regex)

    result = 0
    negative_numbers = []

    numbers.each do |n|
      if n.to_i < 0
        negative_numbers << n.to_i
      else
        result = result + n.to_i
      end
    end

    unless negative_numbers.empty?
      raise StandardError.new("negative numbers not allowed #{negative_numbers.join(",")}")
    end

    return result
  end
end
