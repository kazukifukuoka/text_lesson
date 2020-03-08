def plan(local, num)
  "#{local}ですね、何人で行きますか？"
  print "人数を入力 > "
  member = gets.to_i
  if member >= 5
    puts "5名様以上なので10%割引となります。\n#{member}名様で、合計料金:¥#{ ( num * member * 0.9 ).floor }となります。"
  else
    puts "#{member}名様で、合計料金:¥#{ num * member }となります。"
  end
end


puts <<~TEXT
  旅行プランを選択してください
  1. 沖縄旅行1(¥10,000)
  2. 北海道旅行(¥20,000)
  3. 九州旅行(¥15,000)
  TEXT

print "プランを選択 > "
i = gets.to_i

case i
when 1
  puts plan("沖縄", 10000)
when 2
  puts plan("北海道", 20000)
when 3
  puts plan("九州", 15000)
end
