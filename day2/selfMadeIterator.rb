
def mapEach(new_array = nil)
  map_array = []
  (0...new_array.length).each  do |len|
    map_array[len] = yield new_array[len]
  end

 map_array
end

print "The modified array is : #{mapEach ([1,2,3,4,5]) {|a| a*a} }"