a = 0
b = 1
counter = 1
puts a
puts b

while(counter <= 20)
  c = a + b
  puts c
  a = b
  b = c
  counter = counter + 1
end