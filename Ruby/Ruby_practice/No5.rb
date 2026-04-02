# 第5問：ハッシュを使って情報を管理
# テーマ：音楽（曲データ）

# 問題
# 曲名と再生数が入ったハッシュから、
# 再生数が100以上の曲名だけ取り出してください。

def popular_songs(songs)
  songs.select {|key,val| val >= 100 }.keys
end

songs = { "A" => 50, "B" => 120, "C" => 200 }

p popular_songs(songs)


# 例

# { "A" => 50, "B" => 120, "C" => 200 }
# → ["B", "C"]

# 👉 学べること

# hash操作
# each / select
