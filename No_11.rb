require './common'
url = 'https://gsacademy.tokyo/'
charset = nil

html = open(url) do |f|
  p p f.status # statusコード標準出力  
  charset = f.charset # 文字種別を取得  
  f.read # htmlを読み込んで変数htmlに渡す
end

# htmlをパース(解析)してオブジェクトを作成
doc = Nokogiri::HTML.parse(html, nil, charset)
doc.css("a").each do |it|
  puts it[:href]
end