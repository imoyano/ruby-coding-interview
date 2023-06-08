def is_unique_chars(str)
  return false if str.length > 128

  char_map = Hash.new(0)

  str.chars.each do |ch|
    char_map[ch.ord] += 1
    return true if char_map[ch.ord] > 1
  end

  return false
end

str1 = "hola!"
puts "#{str1}: #{is_unique_chars(str1)}"

str1 = "holanda!"
puts "#{str1}: #{is_unique_chars(str1)}"
