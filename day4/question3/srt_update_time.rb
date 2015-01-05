class SubtitleTrack
  attr_accessor :old_file, :new_file
  def initialize old_file, new_file, entered_time
    @old_file = old_file
    @new_file = new_file
    @entered_time = entered_time
  end

  def update_time dup_array
    time = dup_array.split(":")
    some_array = time[2].split(",")
    ent = @entered_time
    #set milli and sec
    time[2] = some_array[0]
    time[3] = some_array[1]
    val = time[3].to_s.to_i + ent
    val_original = val % 1000
    val_add = val / 1000
    time[3] = val_original.to_s
    #new sec
    val = time[2].to_s.to_i + val_add
    val_original = val % 60
    val_add = val / 60
    time[2] = val_original.to_s
    #new min
    val = time[1].to_s.to_i + val_add
    val_original = val % 60
    val_add = val / 60
    time[1] = val_original.to_s

    #hr
    val = time[0].to_s.to_i + val_add
    val_original = val % 60
    val_add = val / 60
    time[0] = val_original.to_s

    #combine
    sec = time[2]
    sec_mill = time [3]
    time.delete_at(3)
    time.delete_at(2)
    combine = sec << "," << sec_mill
    time.push(combine)
    new_arr = "#{time[0]}:#{time[1]}:#{time[2]}"

  end 

  def use_main
    file = File.open(@old_file, 'r')
    file2 = File.new(@new_file, 'w')
    while !file.eof?
      line = file.readline
      arr = []
      if line.include?("-->")
        array = line.split("-->")
        array.each{|x| arr << update_time(x)}
        line = arr[0]<< "-->" << arr[1]
      end
      file2.puts(line)
    end
    file.close
    file2.close
  end
end

old_file = "bbt.srt"
new_file = "new.srt"
print "Enter duration: "
begin
  entered_time = Integer(gets)
  sub_time = SubtitleTrack.new old_file, new_file, entered_time
  sub_time.use_main
rescue => e
  p e
end
#entered_time = user_time.split(":")
#entered_time[2].split(",")
array = []
