

def palindrome?(str)
  str == str.reverse
end

def palindromeIndex(str)
  a = 0
  b = str.length - 1

  while (a < b) && (str[a] == str[b])
    a += 1
    b -= 1
  end

  if a >= b
    -1
  else
    palindrome?(str[a...b]) ? b : a
  end
end


# puts palindromeIndex('quyjjdcgsvvsgcdjjyq') # 1
puts palindromeIndex('hgygsvlfwcwnswtuhmyaljkqlqjjqlqkjlaymhutwsnwcflvsgygh') # 8
puts palindromeIndex('fgnfnidynhxebxxxfmxixhsruldhsaobhlcggchboashdlurshxixmfxxxbexhnydinfngf') # 33
