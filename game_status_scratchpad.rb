foo = [[51, 05,1.0],[51,979,0.18]]
foo.select { |p| p.last < 1 }


board = ["X","O","X","O","X","X"," "," ","O"]
board.each {|player| puts player}


for index in 0..8 do
end


board = ["X","O","X","O","X","X"," "," ","O"]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  #index = 0
  #board.each{|player|
  for index in 0..8 do
    board[index]
    position_taken?(board,index)
      for i in 0..2 do
        #if player == "X" && i == index
        if board[index] == "X" && i == index
        #for i in 0..2 do
          #if i == index
          WIN_COMBINATIONS[index][i] = "X"
          break
        #elsif player == "O" && i == index
        elsif board[index] == "O" && i == index
          WIN_COMBINATIONS[index][i] = "O"
        end
      end
  end    #elsif player == "O"
      #  for i in 0..2 do
      #    if i == index
      #      WIN_COMBINATIONS[index][i] = "O"
      #    end
      #  end
      #else
        #WIN_COMBINATIONS[index][i] = " "
      #end

        #WIN_COMBINATIONS.each { |array| array[index] = "X" puts array }
  #index += 1}
  puts WIN_COMBINATIONS
end
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
#index = 0
for i in 0..8 do
  for j in 0..2 do
    puts WIN_COMBINATIONS[i][j]
  end
end

#WIN_COMBINATIONS.each {|array| array[index] = "X"}
#WIN_COMBINATIONS.each {|array| puts array[0] = "X"}

for index in 0..8 do
  if board[index] == "X"
    WIN_COMBINATIONS.each {|array|
      for i in 0..2
        if array[i] == board[index]
          array[i] = "X"
end}


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
board = ["X"," "," ","O","O","O","X"," "," "]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
#for index in 0..8 do
  WIN_COMBINATIONS.each {|array|
    for index in 0..8 do
      position_taken?(board,index)
        for i in 0..2 do
          if array[i] == index
            array[i] = board[index]
          end
        end
    end
  }
  WIN_COMBINATIONS.select {|array| array.all? { |e| e == "X" } }
  WIN_COMBINATIONS.select {|array| array.all? { |e| e == "O" } }
  #puts b
  #puts WIN_COMBINATIONS
  #WIN_COMBINATIONS.find_index {|i| i == ["O","O","O"]}
  WIN_COMBINATIONS.find_index {|i|
    i == ["X","X","X"] || i == ["O","O","O"]}


  WIN_COMBINATIONS.select {|array|
    count = 0
    array.all? { |e| e == "O"}
    count += 1
    puts count
  }

  #WIN_COMBINATIONS.select {|array|
    #for i in 0..2 do
      #array.each{|e| e == "X"}
    #end
  #}
  WIN_COMBINATIONS.select {|array|
    if array.all? { |e| e == "X" }
      #puts "The winner is X"
    elsif array.all? { |e| e == "O"}
      #puts "The winner is O"
    else
      false
    end
  }

  #WIN_COMBINATIONS.select {|array|
    #for i in 0..8
      #if array.all? { |e| e == "X" }
        #puts WIN_COMBINATIONS[[i]]
      #elsif array.all? { |e| e == "O"}
        #puts WIN_COMBINATIONS[[i]]
      #else
        #return false
      #end
    #end
  #}




  [[1,3,5],[9,9,9],[2,4,6]].select {|array| array == 9}
  [[1,3,5],[9,9,9],[2,4,6]].select {|array| array.all?{|e| e == 9}}
  [[1,3,5],[9,9,9],[2,4,6]].select {|array|
    for i in 0..2 do
      array[i] == 9
    end
  }

WIN_COMBINATIONS.each {|array| array.detect{|i| i == index}}
WIN_COMBINATIONS.detect {|i| i == index}
index = 3
[0,1,2,3,4].detect{|i| i == index}

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
a = WIN_COMBINATIONS.find_index {|i| i == [2,5,8]}
puts b = WIN_COMBINATIONS[a]


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
W_C_T = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
board = ["X"," "," ","O","O","O","X"," "," "]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
#for index in 0..8 do
  W_CT.each {|array|
    for index in 0..8 do
      position_taken?(board,index)
        for i in 0..2 do
          if array[i] == index
            array[i] = board[index]
          end
        end
    end
  }

  W_C_T.select {|array|
    if array.all? { |e| e == "X" }
      WIN_COMBINATIONS[W_C_T.find_index {|i|
        i == ["X","X","X"]}]
    elsif array.all? { |e| e == "O" }
      WIN_COMBINATIONS[W_C_T.find_index {|i|
        i == ["O","O","O"]}]
    else
      false
    end
    }

  #W_CT.select {|array| array.all? { |e| e == "X" } }
  #W_CT.select {|array| array.all? { |e| e == "O" } }
  #puts b
  #puts WIN_COMBINATIONS
  #WIN_COMBINATIONS.find_index {|i| i == ["O","O","O"]}
  #WIN_COMBINATIONS[W_CT.find_index {|i|
    #i == ["X","X","X"] || i == ["O","O","O"]}]
  #WIN_COMBINATIONS[a]

  [["X","O","X"],["O","O","X"],["O","X","O"]].select {|array|
    array.all? {|i|
      if i == "X"
        puts "There is a winner!"
      else
        false
      end
      }}

	  #indeX = WIN_COMBINATIONS[W_C_T.find_index {|i|
  #          i == ["X","X","X"]}]
  #indeO = WIN_COMBINATIONS[W_C_T.find_index {|i|
  #          i == ["O","O","O"]}]

  indeX = W_C_T.find_index {|i| i == ["X","X","X"]}
  indeO = W_C_T.find_index {|i| i == ["O","O","O"]}

  #if W_C_T.select {|array| array.all? { |e| e == "X" } }
  if !indeX.nil?
    WIN_COMBINATIONS[indeX]
    #WIN_COMBINATIONS[W_C_T.find_index {|i|
    #  i == ["X","X","X"]}]
  #elsif W_C_T.select {|array| array.all? { |e| e == "O" } }
  elsif !indeO.nil?
    WIN_COMBINATIONS[indeO]
      #WIN_COMBINATIONS[W_C_T.find_index {|i|
      #  i == ["O","O","O"]}]
  else
    false
  end
