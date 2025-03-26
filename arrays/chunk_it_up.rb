require 'byebug'
val = [1, 2, 3, 4, 5, 6, 7], 3
=begin
Task:
Write a method that splits an array into chunks of a given size.

Example:

ruby
Copy
Edit
chunk_array([1, 2, 3, 4, 5, 6, 7], 3)
# => [[1, 2, 3], [4, 5, 6], [7]]
Hints:
Use a loop or the each_slice method.

=end

def chunk_array(val)
  array, size = val
  array.each_slice(size).to_a
end

chunk_array(val)