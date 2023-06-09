
# Two strings are considered anagrams if they are made up of the same letters
# (with the same frequencies of each letter) although they may be in a different order.

def get_freq(str)
  freq = Hash.new(0)
  str.each_char do |chr|
    freq[chr] += 1
  end
  p freq
  freq
end

def check_anagram(str1, str2)
  return get_freq(str1) == get_freq(str2)
end

word1 = "listen"
word2 = "silent"
puts "Is the word #{word1} an anagram of #{word2}? Answer: #{check_anagram(word1, word2)}"

word1 = "debit card"
word2 = "bad credit"
puts "Is the word #{word1} an anagram of #{word2}? Answer: #{check_anagram(word1, word2)}"

word1 = "hello"
word2 = "hi"
puts "Is the word #{word1} an anagram of #{word2}? Answer: #{check_anagram(word1, word2)}"