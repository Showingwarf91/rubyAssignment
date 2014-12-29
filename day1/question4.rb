
def conversion(celsius)
  fahrenheit = celsius * 9/5 + 32
  print "Temperature in fahrenheit: "
  puts fahrenheit.round(2)
end

print "Enter room temperature in celsius: "
celsius = gets

#exception handling if input value is invalid

begin
    puts conversion(Float(celsius))
rescue
  puts "Enter a valid temperature"
end


