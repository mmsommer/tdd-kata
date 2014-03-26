class StringCalculator
  def add(numbers)
    return default_number if empty_string(numbers)
    return numbers.to_i
  end

  private
  def empty_string(numbers)
    numbers == ''
  end

  def default_number
    0
  end
end