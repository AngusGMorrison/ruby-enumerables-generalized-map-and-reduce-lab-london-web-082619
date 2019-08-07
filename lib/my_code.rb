# Your Code Here
def map(array)
  new_arr = []
  array.each do |elem|
    new_arr << yield(elem)
  end
  new_arr
end

def reduce(array, start=0)
  array.each do |elem|
    start = yield(start, elem)
  end
  start
end