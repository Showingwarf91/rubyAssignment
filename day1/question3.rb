
def checkForPrime(num)
  count = 2
  while (count < Math.sqrt(num).ceil)
    if(num%count == 0)
      bol = true
    end
    count = count + 1
  end
  if (bol != true)
    puts "Is prime"
  else
    puts "Is composite"
  end
end

print "Enter any no: "
num = gets

begin
  if(Integer(num) > 1)
    checkForPrime(Integer(num))
  elsif(Integer(num) == 0 || Integer(num) == 1)
    puts "Neither prime nor composite"
  else
    puts "Number you've entered is less than 0"
  end
rescue
  puts "Please enter a valid number"
end