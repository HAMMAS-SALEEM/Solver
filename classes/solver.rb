class Solver
  def factorial(num, product = 1)
    raise ArgumentError, 'Negative numbers are not allowed' if num.negative?
    return product if [1, 0].include?(num)

    factorial(num - 1, product * num)
  end

  def reverse_string(str)
    str.chars.reverse.join
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
