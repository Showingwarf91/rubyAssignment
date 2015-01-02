module MyFileModule
  class File

    def create_file path
      file = ::File.new(path , "w")
    end

    def edit_file path,content

    end
    def delete_file path

    end
  end
end

file= MyFileModule::File.new
file.create_file "abc.txt"