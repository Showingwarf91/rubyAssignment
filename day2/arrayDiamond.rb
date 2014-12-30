def functionMy(b,total_sum)
  len = 0
  new_array = []
  new_array_size = 0
  while (len < b.length )
    if(b[len] + new_array_size <= total_sum)
      new_array.push(b[len])
      new_array_size += b[len]
      b.delete(b[len])
      len = len-1
    end
    len += 1
  end
  new_array
end

#a = [4,5,6,8,1,3]
a=[1,2,3,4,5,6,7,8]
sum = a.inject{ |sum = 0,a |sum + a}
n = 3
flag=true
if(sum%n == 0)
  b = a.sort.reverse
  count=1
  total_sum = sum / n
  array=[]
  while(count <= n)
    array[count] = functionMy(b, total_sum)
    if (array[count] == [])
      flag = false
    end
    count += 1
  end
  if(flag == true)
    count = 1
    while(count <=n )
      print "#{count} Array: #{array[count].sort} \n"
      count += 1
    end
  end
else
  print "Invalid array"
end




