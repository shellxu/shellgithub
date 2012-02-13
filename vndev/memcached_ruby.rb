require 'memcached'
time_start = Time.now
$cache = Memcached.new("localhost:11211")
value = 'hello'

count = 1
file = File.new("/root/20120225.csv", "r")
while (line = file.gets)
    #puts line.split(",")
    $cache.set count.to_s,line
    count = count +1 
end
file.close


#$cache.set 'test', value
#puts $cache.get 'test' #=> "hello"
puts Time.now - time_start
