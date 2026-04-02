# 第1問：偶数・奇数を判定しよう（基礎if）
# テーマ：建築（材料チェック）
# 問題
# 材料ID（数字）が渡されるので、
# 偶数なら「使用OK」、奇数なら「要確認」と表示してください。

def check_material(id)
  if  id % 2 == 0
    puts "使用OK"
  else 
    puts "要確認"
  end
end

check_material(4) #→ 使用OK
check_material(3) #→ 要確認

# 👉 学べること

# if文
# %（余り）
