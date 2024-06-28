class Calculator
  def add(input_string)
    numbers = input_string.split(",")

    result = 0

    numbers.each do |n|
      result = result + n.to_i
    end

    return result
  end
end
