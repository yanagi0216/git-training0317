# 第2問：合計金額を出そう（配列×繰り返し）
# テーマ：建築（資材費）

# 問題
# 資材の価格リストから合計金額を出してください。


def total_cost(prices)
  total_price = 0

  prices.each do |price|
    total_price += price
  end

  total_price
  
end

# 例

prices = [1000, 2000, 3000] #→ 6000

puts total_cost(prices)

# 👉 学べること

# each
# 配列操
