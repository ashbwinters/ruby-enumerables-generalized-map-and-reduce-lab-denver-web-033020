def map(array)
  new_array = []
  index = 0
  while index < array.length do
    new_array.push(yield(array[index]))
    index += 1
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    answer = starting_point
  else 
    answer = 0
  end
  
  index = 1
  while index < array.length do
    total = yield(answer,array[index])
    index += 1
  end
  answer
end

