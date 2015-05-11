# SUBSTRINGS

# Implements a method that takes two arguments (a word or phrase, an array of substrings)
# and returns a hash listing each substring found in the array and the number
# of times it was found.

def substrings(phrase, dictionary)
  sub_hash = Hash.new 0
  phrase.downcase!
  dictionary.each do |i|
    occurances = phrase.scan(/#{i}/).count
    if phrase.include?(i)
      sub_hash[i] += occurances
    end
  end 
  sub_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)