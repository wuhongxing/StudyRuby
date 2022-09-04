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

copy_file

# File.delete('test-copy.txt')

