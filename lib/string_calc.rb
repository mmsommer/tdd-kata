class StringCalculator
  def add(input)
    return default_result if empty_input?(input)

    result = default_result
    raise 'Illegal input' if input.end_with?('\n')

    @all_numbers = numbers(input)
    raise "negatives not allowed: #{@negatives.join(',')}" if negative_numbers?

    @all_numbers.each do |number|
      result = result + number
    end
    result
  end

  private
  def negative_numbers?
    @negatives = Array.new
    @all_numbers.each do |number|
      @negatives.push number if number < 0
    end
    !@negatives.empty?
  end

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
    extract_numbers(input).split(delimiter(input)).map do |number|
      number.to_i
    end
  end

  def delimiter(input)
    return Regexp.new input.split('\n').first[2..-1] if input.start_with?('//')
    default_delimiter
  end

  def default_delimiter
    /,|\\n/
  end
end