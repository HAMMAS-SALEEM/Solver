class Solver
  def factorial(num, product = 1)
    raise ArgumentError, 'Negative numbers are not allowed' if num.negative?
    return product if [1, 0].include?(num)

    factorial(num - 1, product * num)
  end

  def reverse_string(str)
    return str.split('').reverse.join('')
  end
end
