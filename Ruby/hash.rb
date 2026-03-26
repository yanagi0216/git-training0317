data = {
  "name":"大泉",
  "gender":"男性",
  "age":46,
}

puts data[:name]
puts data[:gender]
puts data[:age]

data[:address] = "東京"

puts data
puts data[:address]

data[:gender] = "女性"
puts data

data[:children] = ["太郎","次郎","三郎"]
puts data

dic = {
  "x":10,
  "y":20
}

dic[:y] = 40
puts dic