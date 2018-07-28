require 'time'
# p Time.parse(DateTime.now)
unix =  Time.now.to_s

puts unix
# puts Time.parse(unix).to_i

timestamp = Time.parse(unix).to_i

puts timestamp

# 変換
puts Time.at(timestamp)


# https://qiita.com/mogulla3/items/195ae5d8ad574dfc6baa
# https://qiita.com/kidach1/items/12cd27c92c794c2c20b4
