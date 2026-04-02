# 第4問：条件に合うデータだけ取り出す（select）
# テーマ：建築（安全基準）

# 問題
# 強度が「50以上」の材料だけを抽出してください。

def strong_materials(list)
  list.select{|num| num >= 50}
end

list = [30, 60, 80, 20]

p strong_materials(list)

# 例

# [30, 60, 80, 20] → [60, 80]

# 👉 学べること

# select
# 条件フィルタ
