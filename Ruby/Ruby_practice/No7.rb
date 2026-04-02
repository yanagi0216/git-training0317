# 第7問：クラスを作ろう（オブジェクト指向入門）
# テーマ：音楽（バンドメンバー）

# 問題
# Memberクラスを作り、
# 名前と担当楽器を持たせて表示してください。

# member
# ハジメさんはドラマーです。
# ともきさんはギターボーカルです。

# class Member
#   def iniialize
#     @DrName = ""
#     @GtvName = ""
#   end

#   def setName(dr,gtv)
#     @DrName = dr
#     @GtvName = gtv
#   end
  
#   def show()
#     bandMember = [@DrName,@GtvName]
#     p bandMember
#   end
# end

# NewBand = Member.new()
# NewBand.setName("ハジメ","ともき")
# NewBand.show()

# 👉 学べること

# class
# initialize
# インスタンス変数

class Member
  def initialize(name, instrument)
    @name = name
    @instrument = instrument
  end

  def introduce
    "#{@name} は素晴らしい#{@instrument}さんです！"
  end
end

member1 = Member.new("ハジメ", "ドラム")
member2 = Member.new("トモキ", "ギター・ボーカル")

puts member1.introduce
puts member2.introduce
