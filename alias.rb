class Foo
  def m1
    puts 'm1'
  end
end

class Foo
  # 可以给同一个类中增加 m2 方法
  def m2
    puts 'm2'
  end
end

Foo.new.m1
Foo.new.m2

class Foo
  # 也可以把原来的 m1 重写了
  def m1
    puts 'm1 new'
  end
end

Foo.new.m1
foo = Foo.new.m2
# 还可以给特定的实例增加方法
def foo.m2
  puts 'foo.m2'
end
foo.m2

class Foo
  # 下面的两种效果好像是一样的
  # alias :origin_m1 :m1
  alias_method :origin_m1, :m1
  def m1
    origin_m1
    # 这里要是还想调用之前的 m1 方法要怎么做呢？
    puts '重写后的 m1'
  end
end
Foo.new.m1
