module Helper
  def self.distance(obj1, obj2)
    Math.sqrt((obj1.x - obj2.x) ** 2 + (obj1.y - obj2.y) ** 2)
  end

  module ClassMethods
    def shift_right(x, y, z = 0)
      return x + 3, y , z
    end
  end

  def self.included(klass)
    klass.include ClassMethods
    klass.extend ClassMethods
  end
end

class Point
  # 会将 Helper 中的所有方法都引入成本类的实例方法
  include Helper
  # 会将 Helper 中的所有方法都引入成本类的类方法
  # extend Helper
end

point = Point.new
p Point.included_modules
p Point.shift_right(1, 2, 3)
p point.shift_right(1, 2, 3)

# p Point.shift_right(1, 2, 3)


module AnnualFee
  BUCKETS = [0, 1000, 10000, 50000, 100000]
  def fee
    case balance
    when BUCKETS[0]...BUCKETS[1]
      10
    when BUCKETS[1]...BUCKETS[2]
      5
    when BUCKETS[2]...BUCKETS[3]
      3
    else
      0
  end
end
