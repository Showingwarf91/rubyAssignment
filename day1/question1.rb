
def leapYear(number)
  #leapyear
  a = "Leap year"
  b = "Not leap year"
  if(number%400 == 0)
    puts a
  elsif(number%100 != 0 && number%4 == 0)
    puts a
  else
    puts b
  end
end

print "Enter any year: "
number = gets

begin
  if(Integer(number) >= 0)
    leapYear(Integer(number))
  else
    puts "Number you've entered is less than 0"
  end
rescue
  puts "Please enter a valid year"
end
