require './common'
# require 'selenium-webdriver'
url = 'https://gsacademy.tokyo/'
charset = nil

html = open(url) do |f|
  p p f.status # statusコード標準出力  
  charset = f.charset # 文字種別を取得  
  f.read # htmlを読み込んで変数htmlに渡す
end

# htmlをパース(解析)してオブジェクトを作成
doc = Nokogiri::HTML.parse(html, nil, charset)
# driver = Selenium::WebDriver.for :chrome # ブラウザ起動

aaa = []
doc.css("a").each do |it|
  if it[:href].include?("https://gsacademy.tokyo/news/2")
    aaa.push(it[:href])
  end
end

new_site = aaa[rand(aaa.length)]

html = open(new_site) do |f|
  charset = f.charset
  f.read
end

new_doc = Nokogiri::HTML.parse(html, nil, charset)
new_doc.css("p").each do |p|
  puts p.text
end
    



# random_link = doc.css("a")[rand(doc.css("a").length)]

# if random_link[:href].include?("https://gsacademy.tokyo/news/2")
#   html = open(random_link[:href]) do |f|
#     charset = f.charset
#     f.read
#   end

#   new_doc = Nokogiri::HTML.parse(html, nil, charset)
#   doc.css("p").each do |t|
#     puts t.text
#   end
# end