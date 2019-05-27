require_relative "geometric_base"

class TriangleRectangle < GeometricBase
  attr_writer :height, :base

  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    divide(multiply(@base, @height), 2)
  end

  def perimeter
    squareBase = exponentiation(@base, 2)
    squareHeight = exponentiation(@height, 2)
    sumSquareBaseHeight = sum(squareBase, squareHeight)

    sum(radiciation(sumSquareBaseHeight, 2), sum(@base, @height))
  end
end
