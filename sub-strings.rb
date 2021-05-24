def substrings(word, dictionary)
    hash = {} #empty hash
    dictionary.each do |word| #loop through the dictionary to check on word
        count = word.downcase.scan(word).count #return count of each word
        hash[word] = count unless count == 0 #add count and word to hash
    end
    hash #return final hash again
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)