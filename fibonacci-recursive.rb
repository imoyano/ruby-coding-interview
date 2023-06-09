# Fibonacci sequence is:
# 0  1  2  3  4  5  6  7  8  9 10 11
# 0  1  1  2  3  5  8 13 21 34 55 89
# 0 + 1 = 1
# 1 + 1 = 2
# 1 + 2 = 3
# 2 + 3 = 5
# 3 + 5 = 8
# 5 + 8 = 13
# 8 + 13 = 21
# 13 + 21 = 34
# 21 + 34 = 55
# 34 + 55 = 89

def fibonacci_recursive(num)
  return 0 if num <= 0
  return 1 if num <= 2

  return fibonacci_recursive(num-2) + fibonacci_recursive(num-1)
end


number = 3
puts "Fibonacci #{number}: #{fibonacci_recursive(number)}" # 2

number = 4
puts "Fibonacci #{number}: #{fibonacci_recursive(number)}" # 3

number = 6
puts "Fibonacci #{number}: #{fibonacci_recursive(number)}" # 8

number_2 = 10
puts "Fibonacci #{number_2}: #{fibonacci_recursive(number_2)}" # 55

number_3 = 11
puts "Fibonacci #{number_3}: #{fibonacci_recursive(number_3)}" # 89