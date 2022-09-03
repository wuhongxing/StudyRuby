def sp(name)
  p "=================#{name}================="
end

sp('Symbol')
p 'Symbol是唯一的，所以所有的类名、方法名等都是此类型，存在一个Symbol table中，所以查找的速度会很快'
p '但也不可滥用，因为一旦生成在程序运行过程中就无法得到 gc，浪费内存'

sp('Array')
sp('Array 初始化')
array0 = [1, 2, 3]
p "使用[]初始化: #{array0}"
array1 = Array.new
p "使用Array.new初始化: #{array1}"
array2 = Array.new(3, 'string')
p "使用Array.new(number, value)初始化: #{array2}"
array2[0][0] = '1'
p "使用Array.new(number, value)初始化生成的引用不同，而内存地址相同，所以会造成一个元素修改，其他也跟着改: #{array2}"
array3 = Array.new(3) { 'string' }
p "使用 Array.new(number) { value }初始化: #{array3}"
array3[0][0] = '1'
p "这种情况就可以避免同时被修改的问题: #{array3}"
array4 = %w(1 2 3)
p "使用%w初始化, #{array4}"

sp("Array常用方法")
array5 = [1, 2, 3, 4]
p "array[0]取第一个元素: #{array5[0]}"
p "array[-1]取最后一个元素: #{array5[-1]}"
p "array[1..2]取1至2位的元素: #{array5[1..2]}"
p "array.length数组长度: #{array5.length}"
p "array.empty?数组判断空: #{array5.empty?}"
p "使用 push 增加元素"
array5.push(5)
p array5
p "使用 << 增加元素"
array5 << 6
p array5
p "delete 删除元素或 delete_at 删除指定下标元素"
p "注意: 使用 delete 不用加 ! 也是直接删除数组内的元素 -- 危险操作"
p array5.delete(1)
p array5.delete_at(1)
p array5
p "使用 shuffle 随机打乱数组: #{array5.shuffle}"

sp("Array的高阶方法")
p 'each'
array5.each { |item| p item }
p 'each_with_index'
array5.each_with_index { |item, index| p "item: #{item} - index: #{index}" }
p 'select 类似于 js 中的 filter: 返回值是一个数组'
array5 << 2
p array5.select { |item| item == 2 }
p 'any? 类似于 js 中的 some'
p array5.any? { |item| item == 2 }
p array5.any? { |item| item == 2 }
p 'map'
p array5.map { |item| item * 2 }
