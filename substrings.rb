# Return a hash listing each substring (case insensitive) that was found in
# the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(sentence, dictionary)
  result = Hash.new(0)
  dictionary.each do |entry|
    # Downcase the sentence and find each word
    sentence.downcase.scan(/\w+/).each do |word|
      if word.include?(entry)
        # If the word include an entry from the directory make a key-value pair or increment existing value
        result[entry] += 1
      end
    end
  end
  # Return hash with sorted results by descending values
  result.sort_by {|_key, value| value}.reverse.to_h
end


# substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"i"=>3, "it"=>2, "how"=>2, "own"=>1, "howdy"=>1, "sit"=>1, "partner"=>1, "part"=>1, "going"=>1, "go"=>1, "down"=>1}