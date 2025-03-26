my_hash = { "a" => 1, "b" => 2, "c" => 3 }
=begin
Task:
Write a method that inverts a hash — swapping keys and values.

Example:

invert_hash({ "a" => 1, "b" => 2, "c" => 3 })
# => { 1 => "a", 2 => "b", 3 => "c" }
Bonus Challenge:

What if values repeat? What would you do to handle that?
=end

def invert_hash(my_hash)
  result = Hash.new

  my_hash.each do |key, value|
    result[value] = key
  end
  result
end

p my_hash
p invert_hash(my_hash)