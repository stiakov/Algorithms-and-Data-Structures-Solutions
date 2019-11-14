def anagram(str)
  if str.length.odd?
    return -1 if str.length.odd?
  else
    size = str.length / 2
    a = str[0...size].split('').sort
    b = str[size..-1].split('').sort
    return 0 if b == a

    a.each do |char|
      idx = b.index(char)
      b.delete_at(idx) unless idx.nil?
    end
    b.size
  end
end
p anagram 'aaabbb' # 3
p anagram 'ab' # 1
p anagram 'abc'  # -1
p anagram 'mnop' # 2
p anagram 'xyyx' # 0
p anagram 'xulkowreuowzxgnhmiqekxhzistdocbnyozmnqthhpievvlj' # 13
p anagram 'dnqaurlplofnrtmh' # 5
p anagram 'drngbjuuhmwqwxrinxccsqxkpwygwcdbtriwaesjsobrntzaqbe' # -1
p anagram 'ubulzt' # 3
p anagram 'xtnipeqhxvafqaggqoanvwkmthtfirwhmjrbphlmeluvoa' # 13
p anagram 'gqdvlchavotcykafyjzbbgmnlajiqlnwctrnvznspiwquxxsiwuldizqkkaawpyyisnftdzklwagv' # -1
p anagram 'vxxzsqjqsnibgydzlyynqcrayvwjurfsqfrivayopgrxewwruvemzy' # 13
p anagram 'xaxbbbxx' # 1
p anagram 'hhpddlnnsjfoyxpciioigvjqzfbpllssuj' # 10
p anagram 'aujteqimwfkjoqodgqaxbrkrwykpmuimqtgulojjwtukjiqrasqejbvfbixnchzsahpnyayutsgecwvcqngzoehrmeeqlgknnb' # 26
p anagram 'lbafwuoawkxydlfcbjjtxpzpchzrvbtievqbpedlqbktorypcjkzzkodrpvosqzxmpad' # 15
