class Shape
  def area
    if @obj_shape ==  "circle"
      @area = 3.14 * (@radius**2)
    elsif @obj_shape == "rectangle"
      @area= @length * @breadth
    else
      p "Cannot perform operation"
    end
  end
end

class Circle < Shape
  def initialize(radius)
    @obj_shape=  "circle"
    @radius = radius
  end
end

class Rectange < Shape
  def initialize(length, breadth)
    @obj_shape = "rectangle"
    @length = length
    @breadth = breadth
  end
end

radius = 4
length = 2
breadth = 3
obj_circle = Circle.new radius
p "Area of Circle: #{obj_circle.area}"
obj_rectangle = Rectange.new length, breadth
p "Area of Rectangle: #{obj_rectangle.area}"