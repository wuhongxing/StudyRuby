def sp(name)
  p "=================#{name}================="
end
sp "Hash"
sp "Hash 的定义"
p "使用 {key: value}初始化"
h = {key: 'value'}
p h
p "使用 {:key => value}初始化"
h1 = {:key => 'value'}
p h1
p "上面两种可以看成是一样的，其实都是使用 symbol 作为 key 来初始化"
p "为什么使用 symbol 来作为 key?https://stackoverflow.com/questions/8189416/why-use-symbols-as-hash-keys-in-ruby"
p %q(使用 {"key" => value}初始化)
h2 = {"key" => "value"}
p h2
p '同样可以使用 Hash.new() 和 Hash.new {} 来初始化，就不演示了'

sp "Hash 的常用方法"
h3 = {:a => '1', :b => '2', :c => '3'}
h4 = {:d => '1', :e => '2', :f => '3'}
p "assoc: #{h3.assoc(:a)}"
p "empty?: #{h3.empty?}"
p "has_key?(:a): #{h3.has_key?(:a)}"
p "has_value?(:a): #{h3.has_value?(:a)}"
p "merge: #{h3.merge(h4)}"
sp "Hash 高阶函数同 array，详见官网"
sp "Set"
p '必须使用 require 引入 set'
require 'set'
a = Set.new([1, 2, 3])
b = Set.new([2, 3, 4])
p a, b
p "a & b(取交集): #{a & b}"
p "a | b(取并集): #{a | b}"
p "a <= b(判断子集): #{a <= b}"

sp "Range"
p "1..2表示闭区间: #{1..2}"
p "1...3表示开区间: #{1...3}"

sp "如何解决 Hash 中 String 和 Symbol 作为 key 的互换问题"
p "使用 Hash.new(hash) 即可"
p "将 string 的 key 转换为 symbol 可以使用 transfrom_keys(&:to_sym)"
h3 = {:key => "value"}
h3 = Hash.new(h3)
p "使用h3[:key]: #{h3[:key]}"
p "使用h3[\"key\"]: #{h3["key"]}"

h4 = {"key" => "value"}
h4 = h4.transform_keys(&:to_sym)
# h4 = Hash.new(h4)
p "使用h4[:key]: #{h4[:key]}"
p "使用h4[\"key\"]: #{h4["key"]}"

h5 = {key: "value"}
p "使用h5[:key]: #{h5[:key]}"
p "使用h5[\"key\"]: #{h5["key"]}"

