require 'mysql2'
time_start = Time.now
client = Mysql2::Client.new(:host => "localhost", :username => "root")

file = File.new("/root/20120225.csv", "r")
while (line = file.gets)
    #puts line.split(",")
    sql = "insert into test.data (data) values ('"+line+"')";
    results = client.query(sql)
end
file.close


#results = client.query("SELECT * FROM mysql.user")
#results.each do |row|
#	print row['Host']+"\n"
#end
puts Time.now - time_start
