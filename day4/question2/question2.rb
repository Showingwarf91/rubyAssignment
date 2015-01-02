module MyFileModule
  class File
    def create_file path
      file = ::File.new(path , "w")
      file.close
    end

    def edit_file path,content
      file = ::File.open( path, "a+")
      file.puts(content)
      file.close
    end

    def delete_file path
      begin
        ::File.delete(path)
      rescue => e
        p e
      end
    end
  end
end

file= MyFileModule::File.new
loop do
  p " Enter Your Choice (1/2/3)"
  p " 1. Create A file"
  p " 2. Edit A File"
  p " 3. Delete A File"
  choice = gets.chomp

  path = "Enter File Name: "

  case choice
    when "1"
      begin
        print path
        f_name = gets
      rescue => e
        p e
      end
      file.create_file f_name
    when "2"
      print path
      f_name = gets
      print "Enter content: "
      f_content = gets
      file.edit_file f_name, f_content
    when "3"
      print path
      f_name = gets
      file.delete_file gets
    else
      p "You gave me #{choice} -- I have no idea what to do with that."
  end

  print "Do you want to continue (y/n): "
  ans = gets.chomp
  break if ans == "n" || ans == "N"
end
#file.create_file path

#file.delete_file path