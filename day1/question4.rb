
def conversion(celsius)
  fahrenheit = celsius * 9/5 + 32
  puts fahrenheit.round(2)
end

print "Enter room temperature in celsius: "

#exception handling if input value is invalid
begin celsius
    puts conversion(Float(celsius))
rescue
  puts "Enter a valid temperature"
end


