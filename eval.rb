str = 'Hello'
puts eval("str + ' CocoaPods'") # Hello CocoaPods

def foo
  name = 'Gua'
  binding
end
eval('p name', foo)

@a = 'Hello'
class Addition
  def add
    # 只有通过这种方式才可以在类中拿到全局的变量
    TOPLEVEL_BINDING.eval("@a += 'world'")
    # eval("@a += 'world")
  end
end

Addition.new.add
p TOPLEVEL_BINDING.receiver
@a += 'test'
p @a
