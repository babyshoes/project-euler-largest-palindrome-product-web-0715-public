# Implement your procedural solution here!
require 'pry'
def is_palindrome?(input)
  input.to_s == input.to_s.reverse
end

def largest_palindrome_product
  find_palindrome_products
end

def find_palindrome_products
  num1 = num2 = 999
  arr = []
  while num1 > 100
    while num2 > 100
      product = num1 * num2
      arr << product if is_palindrome?(product)
      num2 -= 1
    end
    num2 = 999
    num1 -= 1
  end
  arr.max
end
