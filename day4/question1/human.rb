$:.unshift File.dirname(__FILE__)
require 'name'
class Human
  #attr_accessor :first_name, :last_name
  include Name
  def initialize first,last
    @name = first + " " + last
  end
end

h = Human.new "John", "Doe"
h.scientific_name ="Homo Sapiens"
p h.complete_name