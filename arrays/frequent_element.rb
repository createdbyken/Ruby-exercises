require 'byebug'
freq = [1, 3, 1, 3, 2, 1]
=begin
Write a method that finds the number that appears most frequently in an array.

Example:

ruby

most_frequent([1, 3, 1, 3, 2, 1])
# => 1
Hints:
Use a hash to count frequencies.

Then find the key with the highest value.
=end

def most_frequent(freq)
  number_counts = Hash.new
  freq.each do |num|
    if number_counts[num]
      number_counts[num] += 1
    else
      number_counts[num] = 1
    end
  end
  
  return number_counts
end
p most_frequent(freq)