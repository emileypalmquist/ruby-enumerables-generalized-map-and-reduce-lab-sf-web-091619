# Your Code Here
def map(s_array) 
  new_array = []
  i = 0 
 
  while i < s_array.length do
    new_array.push(yield(s_array[i])) 
    i += 1
  end
 
  new_array
end


map([1, 2, 3]) {|n| n * -1}


def reduce(s_array, s_p=nil)
  i = 0
  
  if s_p
    total = s_p
  else 
    total = s_array[0]
  end  
  
  while i < s_array.length do
    total = yield(total, s_array[i])
    i += 1
  end  
  
  total
end  

