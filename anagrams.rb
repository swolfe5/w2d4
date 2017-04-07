def first_anagram?(word1, word2)
  perms = word1.split('').permutation.to_a #n!
  perms.each do |perm|
    return true if perm == word2.chars
  end

  false
end

def second_anagram?(word1, word2)
  word1.chars.each do |ch, i|
    word2.chars.each do |char, j| #Time complextiy for chars?
      if ch == char
        word2 =  word2.slice(char)
        word1 = word1.slice(ch)
      end
    end
  end
  word1 == word2 #n
end
# n ^2

def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort #n log n
end

def fourth_anagram?(word1, word2)
  one_hash = Hash.new(0)
  two_hash = Hash.new(0)

  word1.each_char { |char| one_hash[char] += 1 }  #O(n)
  word2.each_char { |char| two_hash[char] += 1 }

  one_hash == two_hash #how comparison works?   O(1)
end

def fourth?(word1, word2)
  hash = Hash.new(0)

  word1.each_char { |char| hash[char] += 1 }
  sum = 0
  word2.each_char do |char|
    return false if hash[char].nil?
    sum = sum + hash[char]
  end

  sum == word2.length
end
