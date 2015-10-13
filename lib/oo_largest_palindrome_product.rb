# Implement your object-oriented solution here!
class LargestPalindromeProduct
  attr_accessor :num1, :num2, :arr
  def initialize
    @num1 = 999
    @num2 = 999
    @arr = []
  end

  def is_palindrome?(input)
    input.to_s == input.to_s.reverse
  end

  def find_palindrome_products
    while num1 > 100
      while num2 > 100
        yield
      end
      self.num2 = 999
      self.num1 -= 1
    end
    arr.max
  end

  def shovel_product_if_palindrome
    product = num1 * num2
    arr << product if is_palindrome?(product)
    self.num2 -= 1
  end

  def answer
    find_palindrome_products { shovel_product_if_palindrome }
  end
end
