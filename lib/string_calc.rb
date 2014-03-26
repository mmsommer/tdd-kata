class StringCalculator
  def add(numbers)
    return default_number if empty_string(numbers)
    result = default_number
    numbers.split(',').each do |number|
      result = result + number.to_i
    end
    result
  end

  private
  def empty_string(numbers)
    numbers == ''
  end

  def default_number
    0
  end
end