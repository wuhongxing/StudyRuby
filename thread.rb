def foo
  10.times { p "Call foo at #{Time.now}" }
  sleep(0.5)
end

def bar
  10.times { p "Call bar at #{Time.now}" }
  sleep(0.5)
end

p 'begin'
t1 = Thread.new { foo }
t2 = Thread.new { bar }
t1.join()
t2.join()
p 'end'

p 'ruby 中并没有真正的多线程，他有一个全局的锁，也就是他并不会发生竞争，想要真正的多线程要使用 jruby'
# mutex.synchonize


