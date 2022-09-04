# full_name = Dir.pwd
full_name = Dir::pwd
p full_name
p File.basename(full_name)
p File.dirname(full_name)
p File.extname(full_name)
p File.join('Code', 'Merchant-ZRN')

# p Dir.chdir('..')
p Dir.pwd
p Dir.entries('.')
p Dir['*.rb']
p File.exist?('file.rb')

p Dir.mkdir("tmp")
p Dir.rmdir('tmp')

out_file = File.new('test.txt', 'w')
out_file << 11122222
out_file.close
p `cat test.txt`
# File.copy('test.txt', 'test1.txt')
# File.rename('test.txt', 'rename_test.txt')
# File.delete('rename_test.txt')

def copy_file()
  # 这里可以使用两次 open 配合 IQ.copy_stream 来实现 copy 操作，待后续研究
  `cp test.txt ~/Desktop/package/dev/test-copy.txt`
end

# copy_file

# File.delete('test-copy.txt')

# 作业
unless Dir.exist?('Log')
  Dir.mkdir('Log')
end

# (0...10).each do |index|
#   File.new
# end

Dir.chdir('./Log')
# 读文件方式一：这种会将所有行读成一个数组，并且无需要 open/close
# p File.readlines('log0.txt')

# 读文件方式二
# file = File.open('log0.txt').each_line do |line|
#   p line
# end
# file.close

# 读文件方式三
file = File.open('log0.txt')
while line = file.gets
  p line
end
file.close

# (0...10).each do |index|
#   file = File.new("log#{index}.txt", 'w')
#   file << "Hello world #{File.basename(file)}"
# end

# Dir.glob('*.txt').each do |log|
#   p File.readlines(log)
# end

# Dir['log*.txt'].each do |log|
#   # file = File.open(log, "r")
#     # while line = file.gets
#     #   p line
#     # end
#     # File.open(log, 'r').each_line do |line|
#     #   p line
#     # end
#     p File.readlines(log)
# end
