puts "gかcかpを入力してね"

# 0がグー 1がチョキ 2がパー
pc_hand = rand(3)

p_hand = gets.chomp

if p_hand == "g"


  if pc_hand == 0
    puts "あなたはグー、私はグー、引き分けです。"
   elsif pc_hand == 1
    puts "あなたはグー、私はチョキ、私の負けです。"
   elsif pc_hand == 2
    puts "あなたはグー、私はパー、私の勝ちです。"
   end
  
 elsif p_hand == "c"
  if pc_hand == 0
    puts "あなたはチョキ、私はグー、私の勝ちです。"
   elsif pc_hand == 1
    puts "あなたはチョキ、私はチョキ、引き分けです。"
   elsif pc_hand == 2 
    puts "あなたはチョキ、私はパー、私の負けです。"
  end
  
 elsif p_hand == "p"
  if pc_hand == 0
    puts "あなたはパー、私はグー、あなたの勝ちです。"
   elsif pc_hand == 1
    puts "あなたはパー、私はチョキ、あなたの勝ちです。"
   elsif pc_hand == 2 
    puts "あなたはパー、私はパー、引き分けです。"
   end

 end

