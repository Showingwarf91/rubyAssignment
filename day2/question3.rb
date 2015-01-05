a = "bbt.srt"
file = File.open(a, 'r')
file2 = File.new("new.srt", "w")
# time = Time.new file, file2
a = file.readline
b = "00:00:10,000"
entered_time= 1000
entered_time = b.split(":")
entered_time[2].split(",")
array = []
b = 1
def update_time dup_array, entered_time
  time = dup_array.split(":")
  # print time[2].to_s.to_i + entered_time[2].to_s.to_i
  (0..1).each do |i|
    # p entered_time[i].to_s.to_i
    b = time[i].to_s.to_i + entered_time[i].to_s.to_i
    time[i] = b.to_s
  end
  some_array = time[2].split(",")
  entered_time_sec = entered_time[2].split(",")
  count = 2
  time.delete_at(count)
  (0...some_array.length).each do |x|
    some_val = some_array[x].to_s.to_i + entered_time_sec[x].to_s.to_i
    time[count] = some_val.to_s
    count += 1
  end
  sec = time[2]
  sec_mill = time [3]
  time.delete_at(3)
  time.delete_at(2)
  combine = sec << "," << sec_mill
  time.push(combine)
  new_arr = "#{time[0]}:#{time[1]}:#{time[2]}"
end
while !file.eof?
  line = file.readline
  arr = []
  if line.include?("-->")
    array = line.split("-->")
    (0...array.length).each do |x|
      arr[x] = update_time array[x], entered_time
    end
    line = arr[0]<< "-->" << arr[1]
  end
  file2.puts(line)
end
