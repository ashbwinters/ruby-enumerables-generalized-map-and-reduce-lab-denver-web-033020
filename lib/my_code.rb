def map(array)
  new_array = []
  index = 0
  while index < array.length do
    new_array.push(yield(array[index]))
    index += 1
  end
  new_array
end

def reduce(array, starting_point = 0)
  index = 1
  total = starting_point
  while index < array.length do
    yield(array[index])
    index += 1
  end
  total
end

