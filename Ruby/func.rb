def hello(str)
  puts str
end

hello("Hello World!")
hello("Hello Ruby!")

def calc(a,b)
  return a * b
end

num = calc(21,43)
puts num

def triangle_area(a,h)
  return (a * h)/2
end

result = triangle_area(2,3)
puts result

$file_list = []

def add_list(fileName)
  rbFileName = fileName+".rb"
  $file_list.append(rbFileName)
end

add_list("function")
puts $file_list

add_list("hello")
puts $file_list
