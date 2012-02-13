require "redis"
time_start = Time.now
redis = Redis.new

count = 1
file = File.new("/root/20120225.csv", "r")
while (line = file.gets)
    #puts line.split(",")
    redis.set count,line
    count = count + 1
end
file.close

#redis.set "foo", "bar"
#print redis.get "foo"
puts Time.now - time_start
