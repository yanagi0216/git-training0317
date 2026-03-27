# num = 10 
# if num < 10 then
#   puts "Hello,World"
# end

def check(num)
  if num == 42 then
    puts "Answer to the Ultimate Question of Life,the Universe,and Everything"
    else
    puts "42以外です"
  end
end

$even_nums = []
$odd_nums = []

def sort_numbers(num) 
  if num % 2 == 1 then
    $odd_nums.append(num)
    else
    $even_nums.append(num)
  end
end

sort_numbers(3)
sort_numbers(4)
sort_numbers(235)
sort_numbers(4678)
sort_numbers(36)

puts $even_nums
puts $odd_nums
