class Solver
  def factorial(num, product = 1)
    if num < 0
      raise ArgumentError, "Negative numbers are not allowed"
    end
    if num == 1 || num == 0
      return product
    end
    return factorial(num - 1, product * num)
  end
end