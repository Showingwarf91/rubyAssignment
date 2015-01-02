a = "bbt.srt"
file = File.open(a, 'r')
file2 = File.new("new.srt", "w")
while !file.eof?
  line = file.readline
  puts line
  file2.write line
end
file2.close
file.close