def reverse(str)
  return str if str.empty?

  # last char -> str[-1]
  # remaining (excluding last char) -> str[0..-2]

  return str[-1] + reverse(str[0..-2])
end

str1 = "hola"
puts "#{str1}: #{reverse(str1)}" # aloh

str2 = "!navi olleh"
puts "#{str2}: #{reverse(str2)}" # hello ivan!


