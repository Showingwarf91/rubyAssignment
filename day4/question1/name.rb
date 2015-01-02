module Name
  attr_accessor :scientific_name
  def complete_name
    @name + "(" + @scientific_name +")"
  end
end