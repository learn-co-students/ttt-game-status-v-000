array_1 = [0, 1, 2]
array_2 = [0, 3, 6]
array_3 = [0, 4, 8]
nested_array = [[array_1], [array_2], [array_3]]
position = []
nested_array.each do |array|
  counter = 0
  array.each do |array_index|
    position = array_index
    
    puts position
  end
end
