def map(array)
  new_array = []
  index = 0
  while index < array.length do
    new_array.push(yield(array[index]))
    index += 1
  end
  new_array
end

def reduce(array, starting_point=nil)
  if starting_point
    total = starting_point
  while starting_point < array.length do
    yield(array[starting_point])
    starting_point += 1
  end
  answer
end

