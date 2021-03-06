# メソッド課題
# 条件分岐の課題で作成した旅行プログラムをメソッドで分割してください。

# 条件
# 条件分岐とメソッドを活用してプログラムを作成してください

# 仕様
# ・旅行プランの選択を要求（getsを使用）
# ・人数の入力を要求（getsを使用）
# ・5人以上なら10%割引

# 実行例

# 旅行プランを選択してください
# 1. 沖縄旅行（¥10,000）
# 2. 北海道旅行（¥20,000）
# 3. 九州旅行（¥15,000）

# プランを選択 > 1

# 沖縄旅行ですね、何人で行きますか？

# 人数を入力 > 10

# 5人以上なので10%割引となります

# 合計料金：¥45,000

# # ここから回答ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

def plan(local, num)
  puts "#{local}旅行ですね、何人で行きますか？"
  print "人数を入力 > "
  member = gets.to_i
  if member >= 5
    puts <<~TEXT
    5名様以上なので10%割引となります。
    #{member}名様で、合計料金:¥#{ ( num * member * 0.9 ).floor }となります。
  TEXT
  elsif member > 0
    puts "#{member}名様で、合計料金:¥#{ num * member }となります。"
  else
    puts "入力に誤りがあります。もう一度やり直してください"
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
else
  puts "1〜3の数字で入力してください"
end
