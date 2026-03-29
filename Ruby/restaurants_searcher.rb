def write_data_to_csv()
  restaurants = []
  respomse = "hogehoge"

  if respomse.has_key?("error") then
    puts "エラーが発生しました！"
    return
  end
  for restaurant in response["results"]["shop"]do
    rest_name = restaurant["name"]
    restaurants.append(rest_name) 
  end
  
  return puts restaurants
end

write_data_to_csv()
