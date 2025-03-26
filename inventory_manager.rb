inventory = { "apple" => 2, "banana" => 3 }
items_to_add = ["apple", "orange", "banana", "apple"]
=begin
Create a method that manages a simple inventory. The method should:

Accept a hash where the keys are item names and the values are their quantities.
Accept a list of items to add to the inventory.
Increase the quantity of each item in the hash if it exists, otherwise add it with a quantity of 1.
Return the updated hash.
Example:

inventory = { "apple" => 2, "banana" => 3 }
items_to_add = ["apple", "orange", "banana", "apple"]
inventory_manager(inventory, items_to_add)
# => { "apple" => 4, "banana" => 4, "orange" => 1 }
Hints:

Use Hash#each or Array#each to iterate through the items.
Use Hash#[] to access or set values in the hash.
Use Hash#key? to check if an item exists in the inventory.
=end

def simple_inventory(inventory, items_to_add)
  items_to_add.each do |i|
    if inventory.include?(i)
      inventory[i] += 1 if inventory.include?(i)
    else
      inventory[i] = 1
    end
  end
  inventory
end

p simple_inventory(inventory, items_to_add)