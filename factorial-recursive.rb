# In mathematics, the factorial of a non-negative integer n, denoted by n!,
# is the product of all positive integers less than or equal to n.


def factorial_recursive(num)
  return 1 if num <= 0

  return num * factorial_recursive(num-1)
end

number_1 = 10
puts "Factorial #{number_1}: #{factorial_recursive(number_1)}" # 3628800

number_2 = 3
puts "Factorial #{number_2}: #{factorial_recursive(number_2)}" # 6