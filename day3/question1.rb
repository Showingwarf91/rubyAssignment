# setting up value of quotient and divisor
def value
  #checking if the user inputs a valid value
  begin
    getr = Float(gets)
  rescue => e
    p e
  end
end

print "Enter a No: "
quotient = value()
print "Enter divisor: "
divisor = value()
begin
  division = quotient/divisor
 rescue => e
  p e
end
#displaying accordingly if answer is either float or integer
if quotient%divisor == 0
  p division.round(0)
else
  p division
end

