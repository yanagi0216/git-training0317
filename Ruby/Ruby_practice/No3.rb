# 第3問：高い順に並べ替え（sort）
# テーマ：音楽（楽曲人気）

# 問題
# 再生数を降順に並び替えてください。

def sort_plays(plays)
  plays.sort.reverse
end

plays = [120, 300, 50]

p sort_plays(plays)

# 例

# [120, 300, 50] → [300, 120, 50]

# 👉 学べること

# sort
# ブロック
