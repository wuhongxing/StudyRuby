class Animal
end

# 使用 module include 可以达成 mixin 的效果
# 和我们在 swift 使用的 protocol 非常像
# swift 里面的协议主要分为三种类形：XXType、XXAble、XXConvertable
module Runnable
  # 混入属性（在 oc 的 protocol 中混入属性需要使用 sythenize 关键字）
  attr_accessor :name
  def initialize
    @name = "rnnable name"
  end
  # 混入方法
  def run
    puts 'I can run'
  end
end

module Flyable
  def fly
    puts 'I can fly'
  end
end

class Dog < Animal
  include Runnable
end

class Parrot < Animal
  include Flyable
end

dog = Dog.new
dog.run
puts dog.name
Parrot.new.fly
