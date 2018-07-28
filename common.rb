require 'nokogiri'
require 'active_record'
require 'open-uri'
require 'pp'


# # 標準出力ログを出す
ActiveRecord::Base.logger = Logger.new(STDOUT)
#
# # active_recordを継承する。
class User < ActiveRecord::Base
end

class Item < ActiveRecord::Base
end

class Post < ActiveRecord::Base
  # 投稿は複数のコメントを持つ。投稿から見るとコメントは子
  has_many :comments
end

class Comment < ActiveRecord::Base
  # コメントから見ると投稿は親
  belongs_to :post
end

#
ActiveRecord::Base.establish_connection(
  adapter:  "mysql2",  #アダプター名
  host:     "localhost",  #ホスト名
  username: "root",  #ユーザー名
  password: "",  #パスワード
  database: "ruby_study",  #データベース名
)

p Nokogiri.class