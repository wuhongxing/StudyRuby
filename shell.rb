p 'begin'
# 会开辟一个新的进程执行此命令，执行完成后进程退出，当前进程命令不再执行
# exec 'echo "hello world"'
# 会开辟一个子进程执行命令，执行完成后子进程退出，当前进程命令继续执行，执行结果会输出到终端
# system 'echo "hello world"'
# 会直接执行此命令，执行结果不会输出到终端
# `ls`
# `git add .`
# `git push`
# `git pull`
# 使用 IO.popen 可以传递一个 block
# IO.popen('date') { |f|
#   p f.gets
# }
# IO.popen('git pull') { |f|
#   p f.gets
# }
# p `ls`.lines.join

p 'after'
