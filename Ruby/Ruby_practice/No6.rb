# 第6問：メソッド分割（改善版・問題文）
# 🎯 問題

# あなたは建築会社で見積もり計算を担当しています。

# ある工事では、以下のルールで合計金額を計算します。

# 材料費：面積 × 単価
# 手数料：材料費の10%
# 合計金額：材料費 + 手数料
# ⚠️ 条件（ここが重要）

# このシステムでは、将来的に手数料の計算方法が変更される可能性があります。

# そのため、以下のように実装してください。

# 👉 それぞれの処理をメソッドに分けること

# 🧩 実装イメージ
# 材料費を計算するメソッド
# 手数料を計算するメソッド
# 合計金額を計算するメソッド


def calculate_material(area, price)
  area * price
end

def calculate_fee(material_cost)
  material_cost * 0.2
end

def calculate_total(area, price)
  material_fee = calculate_material(area,price)
  commission_fee = calculate_fee(material_fee)

  material_fee + commission_fee
  
end

puts calculate_total(10,2000).to_i


# 📝 入力例
# 面積: 10
# 単価: 2000
# 📝 期待される出力
# 合計金額: 22000

# （材料費：20000、手数料：2000）

# 💡 ヒント
# メソッドは「役割ごと」に分けると考えよう
# 1つのメソッドに全部書かないこと
# 🎯 この問題で身につくこと
# メソッド分割の意味
# 「変更に強いコード」の考え方
# 実務で使われる設計の基本
