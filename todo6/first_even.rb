def first_even(items)
  array = items.select do |number|
  	number % 2 == 0
  end
  array[0]
end
