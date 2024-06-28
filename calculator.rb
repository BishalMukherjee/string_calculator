class Calculator
  def add(input_string)
    delimiter_string = input_string.match(/^\/\/(.*?)\n/)
    given_delimiter = delimiter_string ? delimiter_string[1] : nil
    delimiter_regex = "[,\n#{given_delimiter}]"

    regex = Regexp.new(delimiter_regex)

    numbers = input_string.split(regex)

    result = 0

    numbers.each do |n|
      result = result + n.to_i
    end

    return result
  end
end
