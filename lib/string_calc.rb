class StringCalculator
  def add(numbers)
    return default_result if empty_input?(numbers)
    result = default_result
    numbers.split(',').each do |number|
      result = result + number.to_i
    end
    result
  end

  private
  def empty_input?(numbers)
    numbers == ''
  end

  def default_result
    0
  end
end