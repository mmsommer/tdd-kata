class StringCalculator
  def add(numbers)
    return default_result if empty_input?(numbers)

    result = default_result
    numbers.split(/,|\\n/).each do |number|
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
end