# Enumerable

### Enumerable methods that iterate over a collection
### Enumerable methods that filter a collection

# find_all
# Returns a array of values that meet the criteria of the block
numbers = [100, 50, 200, 300, 70, 500, 80]                 # => [100, 50, 200, 300, 70, 500, 80]
less_than_one_hundreds = numbers.find_all { |n| n < 100 }  # => [50, 70, 80]
less_than_one_hundreds                                     # => [50, 70, 80]

### Enumerable methods that return true or false
### Enumerable Methods that Distill a Collection to One Value

# count
# Returns the value of the number of items in a collection
names = ['pat', 'ryan', 'josh', 'jeff']  # => ["pat", "ryan", "josh", "jeff"]
names.count                              # => 4

# find
# Returns the first value in the collection that meets the
# criteria of the block
numbers = [100, 50, 200, 300, 70, 500, 80]            # => [100, 50, 200, 300, 70, 500, 80]
less_than_one_hundred = numbers.find { |n| n < 100 }  # => 50
less_than_one_hundred                                 # => 50

### Enumerable Methods that Return New-Shaped Collections

# map
# Get a collection of desired values,
# based on a collection of existing values
numbers = [1, 2, 3, 4, 5]                       # => [1, 2, 3, 4, 5]
squares = numbers.map { |number| number ** 2 }  # => [1, 4, 9, 16, 25]
numbers                                         # => [1, 2, 3, 4, 5]
squares                                         # => [1, 4, 9, 16, 25]

# to_a
# Returns the array equivalent of a collection
hash = {'a' => 1, 'b' => 2,'c' => 3}  # => {"a"=>1, "b"=>2, "c"=>3}
hash.to_a                             # => [["a", 1], ["b", 2], ["c", 3]]

# group_by
# Returns a hash with a true pointing to an array
# of values that satisfy the block's 'criteria,'
# and false pointing to those that don't
numbers = [1, 2, 3, 4, 5, 6]    # => [1, 2, 3, 4, 5, 6]
hash = numbers.group_by do |n|  # => [1, 2, 3, 4, 5, 6]
  n % 2 == 0                    # => false, true, false, true, false, true
end                             # => {false=>[1, 3, 5], true=>[2, 4, 6]}
hash                            # => {false=>[1, 3, 5], true=>[2, 4, 6]}
even = hash[true]               # => [2, 4, 6]
odd = hash[false]               # => [1, 3, 5]




# inject
numbers = [1, 2, 3, 4]            # => [1, 2, 3, 4]
numbers.inject do |product, num|  # => [1, 2, 3, 4]
  sum * num                       # ~> NameError: undefined local variable or method `sum' for main:Object
end

# ~> NameError
# ~> undefined local variable or method `sum' for main:Object
# ~>
# ~> /Users/patwey/turing/enumerable.rb:57:in `block in <main>'
# ~> /Users/patwey/turing/enumerable.rb:56:in `each'
# ~> /Users/patwey/turing/enumerable.rb:56:in `inject'
# ~> /Users/patwey/turing/enumerable.rb:56:in `<main>'
