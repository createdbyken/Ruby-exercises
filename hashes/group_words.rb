require 'byebug'
words = ["hi", "hello", "hey", "world"]
=begin
Task: Given an array of words, group them in a hash where the keys are word lengths and the values are arrays of words of that length.

Example:

group_by_length(["hi", "hello", "hey", "world"])
# => {2=>["hi"], 5=>["hello", "world"], 3=>["hey"]}

Hints:
Loop through the array.
Use word.length as the hash key.
=end

def group_by_length(words)
  words.each_with_object({}) do |item, hash| 
    letter_size = item.length
    if hash[letter_size]
      hash[letter_size] << item
    else
      hash[letter_size] = [item]
    end
  end
end

  

p group_by_length(words)