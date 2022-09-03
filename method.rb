def hello
  'hello world'
end

p hello

p 'Method Definition'
p '1. What is the return value of a ruby method? -- Avoid Explicit Return'
p '最后一行即表示函数的返回值'
p '除非卫语句，否则别写 return'
def foo1(num)
  return num - 20 if num < 0
  num + 10
end
p "foo1 -10: #{foo1 -10}"
p "foo1 10: #{foo1 10}"
p "上面这种写法真的得适应一下，不加扩号还是 ruby 会玩"

p '2. What is self in ruby'
p '就是表示对象本身（这个有点面向对象基础理解起来都不难，只有 JS 这种傻 B 语言才会把 this 设计的如此难以理解）'
str = 'abc'
def str.pself
  p self
end
str.pself

p '3. What is method alias?'
p '其实就是为了函数重命名能读起来更通顺'

p '4. What is operator method in ruby?'
array = [1, 2, 3]
p "array[2] 等同于 array.[](2): #{array[2]} #{array.[](2)}"
p '由于是面向对象的语言，所以他不会给外部任何的机会去改变自己内部的变量（只能使用 setter 和 getter，也就是 accessor）-- 这个应该是所有面向对象语言的原则'
p array + [4]
def array.+(num)
  self.dup << num
end
p array + 4
p array + 5

# def overload(a)
#   p a
# end

def overload(a, b = 10)
  p a, b
end
overload 10
overload 20, 30

p '6. What is splat operator(*) in ruby mehtod parameters?'
p '在 swift 中这个是有严格限制的，就是必须是最后一个才能是可变参数，这个是由于 swift 在执行时的一些特性决定的。（后期看看这个和函数的调用有很大的关系）
而在 ruby 中没有什么限制，他会把你多的参数转成一个数组'
def foo(a, *b, c)
 p a, b, c
end
foo 1, 2, 3, 4, 5
p '但是这样传递参数的话，要一一对应，有可能对不上'
def foo_hash(h)
  h.each { |key, value|
    p key, value
  }
end
foo_hash :a => 1, :b => 2

p 'Method Invocation'
p "7. Do we need add parenthesis for method invocation?"
p '应该使用圆括号的情况'
p '方法有返回值且有参数时，或者有()时'
def sum(a, b)
  a + b
end
res = sum(10, 20)
p res
