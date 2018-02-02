X = {}


def intense
  puts "Pid #{Process.pid}"
  x = 0
  10000000.times do |i|
    x = x + i + Process.pid**4
  end
   X["#{Process.pid}"] = Process.pid
  puts "Pid says #{Process.pid}: #{x}"
  p X
end
puts "master pid #{Process.pid}"


PIDS = []
4.times do 
  PIDS << fork do 
    intense
  end
end
Process.waitall

p X
p PIDS
