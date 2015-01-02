$:.unshift File.dirname(__FILE__)
require 'name'
class Animal
  attr_accessor :name
  include Name
  def initialize name
    @name = name
  end
end

ani = Animal.new "Frog"
ani.scientific_name = "Rana Tigrina"
p ani.complete_name