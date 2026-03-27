def write_data_to_csv()
  restaurants = []
  respomse = "hogehoge"

  if respomse == nil or response["results"].has_key?("error") then
    puts "エラーが発生しました！"
    return
  end

  return puts restaurants
end

write_data_to_csv()
