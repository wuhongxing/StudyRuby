class Point
  attr_accessor :x # setter and getter
  attr_reader :y # getter

  @@origin = 0
  ORIGIN = 100
  def initialize(x, y)
    @x, @y = x, y
  end

  def size
    x * y
  end

  def +(p2)
    Point.new(x + p2.x, y + p2.y)
  end

  def self.class_method(x, y)
    p x, y
  end

  class << self
    def a
      p 'a'
      @@origin
    end
    def b
      p 'b'
      ORIGIN
    end
  end
end

point = Point.new(10, 20)
p point.x, point.y
p point.size
point1 = Point.new(30, 40)
p point+point1
Point.class_method(100, 200)
p Point.a
p Point.b
p Point::ORIGIN


# 作业
class BankAccout
  @@exchange_rate
  @balance

  def deposite(amount)
    balance += amount
  end

  def withdraw(amount)
    balance -= amount
  end

  class << self
    def used_to_rmb(amount)
      amount * exchange_rate
    end
    def rmb_to_used(amount)
      amount / exchange_rate
    end
  end
end
