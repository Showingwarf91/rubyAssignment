getNumber=""
print "enter any year "
getNumber=gets
getNumber=getNumber.to_i

#leapyear
if(getNumber%400==0)
  puts "leap year"
elsif(getNumber%100==0)
  puts "not leap year"
elsif(getNumber%4==0)
  puts"leap year"
elsed
  puts"not leap year"
end
