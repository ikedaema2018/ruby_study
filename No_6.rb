puts "gかcかpを入力してね"

# 0がグー 1がチョキ 2がパー
pc_hand = rand(3)

p_hand = gets.chomp

if p_hand == "g" then


  if pc_hand == 0 then
    puts "あなたはグー、私はグー、引き分けです。"
   elsif pc_hand == 1 then
    puts "あなたはグー、私はチョキ、私の負けです。"
   elsif pc_hand == 2 then 
    puts "あなたはグー、私はパー、私の勝ちです。"
   end
  
 elsif p_hand == "c" then
  if pc_hand == 0 then
    puts "あなたはチョキ、私はグー、私の勝ちです。"
   elsif pc_hand == 1 then
    puts "あなたはチョキ、私はチョキ、引き分けです。"
   elsif pc_hand == 2 then 
    puts "あなたはチョキ、私はパー、私の負けです。"
  end
  
 elsif p_hand == "p" then
  if pc_hand == 0 then
    puts "あなたはパー、私はグー、あなたの勝ちです。"
   elsif pc_hand == 1 then
    puts "あなたはパー、私はチョキ、あなたの勝ちです。"
   elsif pc_hand == 2 then 
    puts "あなたはパー、私はパー、引き分けです。"
   end

 end

