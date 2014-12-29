
print "enter first no "
firstNumber=gets.to_i
print "enter first no "
secondNumber=gets.to_i
b=1
puts firstNumber
puts secondNumber
while(b<=20)
  fibNumber=firstNumber+secondNumber
  puts fibNumber
  firstNumber =secondNumber
  secondNumber =fibNumber
  b=b+1
end