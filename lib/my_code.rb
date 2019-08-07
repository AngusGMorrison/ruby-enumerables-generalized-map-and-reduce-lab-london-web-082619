# Your Code Here
def map(array)
  new_arr = []
  array.each do |elem|
    new_arr << yield(elem)
  end
  new_arr
end

def reduce(array, start=nil)
  if start
    i = 0
    memo = start
  else
    i = 1
    memo = array[0]
  end
  
  array.each do |elem|
    memo = yield(memo, elem)
  end
  memo
end