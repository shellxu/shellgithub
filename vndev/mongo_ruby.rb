require 'mongo'
time_start = Time.now
@conn = Mongo::Connection.new
@db   = @conn['sample-db']
@coll = @db['test']

=begin
@coll.remove
3.times do |i|
  @coll.insert({'a' => i+1})
end
=end


file = File.new("/root/20120225.csv", "r")
while (line = file.gets)
    #puts line.split(",")
    @coll.insert({'data' => line})
end
file.close

#puts "There are #{@coll.count} records. Here they are:"
#@coll.find.each { |doc| puts doc.inspect }

puts Time.now - time_start
