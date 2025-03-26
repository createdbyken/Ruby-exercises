numbers = [3, 6, 1, 8, 3, 9, 6, 2]
=begin
You have a list of numbers. Write a method that:

Sorts the array in ascending order.
Removes any duplicate numbers.
Returns an array of only the even numbers.
Example:

numbers = [3, 6, 1, 8, 3, 9, 6, 2]
list_organizer(numbers)
# => [2, 6, 8]
Hints:

Use Array#sort to sort the array.
Use Array#uniq to remove duplicates.
Use Array#select with a block to filter even numbers.
=end

def list_organizer(numbers)
  format = numbers.sort.uniq
  format.select { |ev| ev % 2 == 0 }
end

p list_organizer(numbers)