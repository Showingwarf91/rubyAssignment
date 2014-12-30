
def mapEach(new_array = nil)
  len = 0
  map_array = []
  while(len < new_array.length)
    map_array[len] = yield new_array[len]
    len = len + 1
  end
 map_array
end

print "The modified array is : #{mapEach ([1,2,3,4,5]) {|a| a*a} }"