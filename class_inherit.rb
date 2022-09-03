class Point
  attr_accessor :x
  attr_accessor :y
  def initialize(x, y)
    @x, @y = x, y
  end

  private
  def private_mehtod
    p '使用 private 后面所有的方法都会变成 private'
  end
  # 使用这种方式可以使用某一个方法成为 private_method，其实也是调用函数
  private :private_mehtod
end

class Point3D < Point
  attr_accessor :z
  def initialize(x, y, z)
    super(x, y)
    @z = z
  end
end


point3D = Point3D.new(1, 2, 3)
p point3D.is_a? Point
p point3D.is_a? Point3D
p point3D.instance_of? Point
p point3D.instance_of? Point3D
