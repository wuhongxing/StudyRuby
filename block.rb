def message(params)
  p 'do something'
  p params
  yield if block_given?
end
message 'ppppppp' do
  p 'do otherthings'
end
p '================='
p 'using yield'
def foo
  a = 2
  yield a
end
foo { |a| p a }

p 'using block'
def foo1(&block)
  a = 2
  block.call(a)
end
foo1 { |a| p a }

array = ['a', 'b', 'c']
p 'Proc'
p array.map(&:capitalize)

p 'Proc lambda的区别是什么'
p '1. 参数'
proc = Proc.new { |x, y| p x, y }
proc.call(1)
proc.call(1, 2)
proc.call(1, 2, 3)

lambda = lambda { |x, y| p x, y }
# lambda.call(1)
lambda.call(1, 2)
# lambda.call(1, 2, 3)

p "2. 流程控制"
proc = Proc.new { |x| return if x > 0 }
p '如果这里执行一个 proc，那么后面的代码就不会执行了'
# proc.call(1)
p proc.class
lambda = lambda { |x| return if x > 0 }
lambda.call(1)
p lambda.class


p 'Proc 表现更像是一个 block, lambda 表现更像是一个方法'


# TODO: 实现一个 start_with(array, value) 函数
