require 'date'

d = Date.new(2007, 5 ,30)

n = Date.today

dd = DateTime.new(2007, 5, 30, 22, 45)
nn = DateTime.now

date = DateTime.now
puts "#{date.year}-#{date.month}-#{date.day} #{date.hour}:#{date.min}"

p d
p n

p dd
p nn