
def map(source)
  new_arr = []
  source.each do |val|
    new_arr << yield(val)
  end
  return new_arr
end

# making a general-case initial value is
# a strange and ambiguous thing
def reduce(source, initial = nil)
  if !initial then
    result = source[0]
    index = 1
  else
    result = initial
    index = 0
  end
  
  while index < source.length do
    result = yield(source[index], result)
    index += 1
  end
  
  return result
end

puts (0 && true)