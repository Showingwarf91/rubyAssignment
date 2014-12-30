PEOPLE_COUNT = 3

def valueDistribution(given_array, possible_value)
  len = 0
  new_array = []
  new_array_size = 0
  while (len < given_array.length )
    if(given_array[len] + new_array_size <= possible_value)
      new_array.push(given_array[len])
      new_array_size += given_array[len]
      given_array.delete_at(len)
      len = len - 1
    end
    len = len + 1

  end
  new_array
end

#a = [4,5,6,8,1,3]
#a=[1,2,3,4,5]
a = [2,2,2,2,1,1,3,2]
array_sum = a.inject{ |sum, a| sum + a}

flag = true
if(array_sum%PEOPLE_COUNT == 0)
  b = a.sort.reverse
  count = 1
  possible_sum = array_sum / PEOPLE_COUNT
  distribute_array = []
  while(count <= PEOPLE_COUNT)
    distribute_array[count] = valueDistribution(b, possible_sum)
    if (distribute_array[count] == [])
      flag = false
    end
    count += 1
  end
  if(flag == true)
    count = 1
    while(count <= PEOPLE_COUNT )
      print "#{count} Array: #{distribute_array[count].sort} \n"
      count += 1
    end
  else
    print "Invalid Array"
  end
else
  print "Invalid array"
end




