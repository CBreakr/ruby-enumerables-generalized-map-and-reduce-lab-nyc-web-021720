
def map(source)
  new_arr = []
  source.each do |val|
    new_arr << yield(val)
  end
  return new_arr
end

# making a general-case initial value is 
# a strange and ambiguous thing
def reduce(source, initial = 0)
  result = initial
  source.each do |val|
    result = yield(result, val)
  end
  return result
end

puts "test #{0 && true}"