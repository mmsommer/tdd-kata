class StringCalculator
  def add(input)
    return default_result if empty_input?(input)

    result = default_result
    raise 'Illegal input' if input.end_with?('\n')

    numbers(input).each do |number|
      result = result + number.to_i
    end
    result
  end

  private
  def empty_input?(input)
    input == ''
  end

  def default_result
    0
  end

  def extract_numbers(input)
    return input.split('\n', 2).last if input.start_with?('//')
    input
  end

  def numbers(input)
    extract_numbers(input).split(delimiter(input))
  end

  def delimiter(input)
    return Regexp.new input.split('\n').first[2..-1] if input.start_with?('//')
    default_delimiter
  end

  def default_delimiter
    /,|\\n/
  end
end