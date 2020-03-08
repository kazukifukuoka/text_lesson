puts <<~TEXT
  旅行プランを選択してください
  1. 沖縄旅行(¥10,000)
  2  北海道旅行(¥20,000)
  3. 九州旅行(¥15,000)
TEXT

print "プランを選択 > "
i = gets.chomp.to_i

case i
when 1
  puts "沖縄旅行ですね、何人で行きますか？"
  print "人数を入力 > "
  member = gets.to_i
  if member >= 5
    puts <<~TEXT
      5人以上なので10%割引となります

      合計料金:¥#{ (10000 * member * 0.9).floor }
    TEXT
  else
    puts "合計料金:¥#{10000 * member }"
  end
when 2
  print "北海道旅行ですね、何人で行きますか？"
  puts "人数を入力 > "
  member = gets.to_i
  if member >= 5
    puts <<~TEXT
      5人以上なので10%割引となります

      合計料金:¥#{ (20000 * member * 0.9).floor }
    TEXT
  else
    puts "合計料金:¥#{ 20000 * member }"
  end
when 3
  puts "九州旅行ですね、何人で行きますか？"
  print "人数を入力 > "
  member = gets.to_i
  if member >= 5
    puts <<~TEXT
      5人以上なので10%割引となります

      合計料金:¥#{ (15000 * member * 0.9).floor }
    TEXT
  else
    puts "合計料金:¥#{ 15000 * member }"
  end
end

