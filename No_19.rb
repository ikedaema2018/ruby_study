require 'mysql2'

client = Mysql2::Client.new(:host => 'localhost', :user => 'root', :password => '')
query = %q{select age, gender from ruby_study.users}
results = client.query(query)
results.each do |row|
  puts "--------------------"
  row.each do |key, value|
    puts "#{key} => #{value}"
  end
end