def substrings(word, dictionary)
  word_arr = word.downcase.split
  result_hash = Hash.new(0)
  word_arr.each do |word|
    dictionary.select { |sub| result_hash[sub] += 1 if word.include?(sub.downcase) } 
  end
  result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)