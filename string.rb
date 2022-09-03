def sp(name)
  p "=============#{name}============="
end

sp('字符串定义')
s0 = '单引号定义 string'
p s0
s1 = "双引号可以使用字符串插值-#{s0}"
p s1
s2 = %q(会直接将'输出)
p s2
s3 = %Q(会直接将"输出)
p s3
s4 = <<-Text
这是一个多行文字
这是一个多行文字
Text
p s4

sp('常用函数')
p '在 Ruby 中函数分为三种类型'
p 'normal method(method): 普通函数'
p 'predicate method(method?): 判断类型的函数'
p 'dangreous method(method!): 会改变自身的函数'

s5 = '12345'
p s5
p "reverse不会改变自身#{s5.reverse}"
p s5
p "reverse!会改变自身#{s5.reverse!}"
p s5
s5.reverse!
p "include?(1): #{s5.include?('1')}"
p "index(1): #{s5.index('1')}"
p "index(6): #{s5.index('6')}"
p "sub('2', '3')替代字符串，不是replace: #{s5.sub('2', '3')}"
p "取子串[1..2]: #{s5[1..2]}"



