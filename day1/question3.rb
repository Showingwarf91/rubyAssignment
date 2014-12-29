
print "enter any no"
checkPrime=gets.to_i


b=2;
while (b<checkPrime)
  if(checkPrime%b==0)
    bol=true
  end
  b=b+1
end
if (bol!=true)
  puts " prime"
else
  puts"composite"
end

