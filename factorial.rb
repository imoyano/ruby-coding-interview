# In mathematics, the factorial of a non-negative integer n, denoted by n!,
# is the product of all positive integers less than or equal to n.

def factorial(num)
  factorial = 1
  return factorial if num <= 0

  (1..num).each do |i|
    factorial *= i
  end

  factorial
end


number_1 = 10
puts "Factorial #{number_1}: #{factorial(number_1)}" # 3628800
