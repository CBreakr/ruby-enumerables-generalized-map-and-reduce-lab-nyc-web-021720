
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
    puts "before yield: #{result}, #{val}."
    result = yield(val, result)
    puts "the result #{result}."
  end
  return result
end

val = reduce([false, nil, nil, nil]){|memo, n| memo && n}
puts "end value #{val}."

puts "test: #{(false && nil)}"
