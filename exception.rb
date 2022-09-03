begin
  raise TypeError, "a" + 10, caller
rescue => exception
  p exception, caller
ensure
  p 'finally'
end

