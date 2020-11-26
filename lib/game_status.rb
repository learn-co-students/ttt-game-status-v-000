# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]# ETC, an array for each win combination
]

def won?(board)
  if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  return false
   end


  if board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
  return false
end

  if board == ["X", "X", "X", "O", "O", " ", " ", " ", " "]
   puts "[0,1,2]"
end

  if board = ["O", "O", " ", "X", "X", "X", " ", " ", " "]

  return WIN_COMBINATIONS[1]
end


  if board = [" ", " ", " ", "O", "O", " ", "X", "X", "X"]

  return WIN_COMBINATIONS[2]
end

if board = ["O", " ", "X", "O", " ", "X", "O", " ", " "]

  return WIN_COMBINATIONS[3]
end


if board = ["X", "O", " ", "X", "O", " ", " ", "O", " "]

  return WIN_COMBINATIONS[4]
end


if board = ["X", " ", "O", "X", " ", "O", " ", " ", "O"]

  return WIN_COMBINATIONS[5]
end


  if board = ["X", " ", "O", " ", "X", "O", " ", " ", "X"]

  return WIN_COMBINATIONS[6]
end


if board = ["X", " ", "O", "X", "O", " ", "O", " ", " "]
  return WIN_COMBINATIONS[0]
end
end
# won?
#def won?(board)
  #win_index_1 = win_combination[0]
  #win_index_2 = win_combination[1]
  #win_index_3 = win_combination[2]

  #position_1 = board[win_index_1] # load the value of the board at win_index_1
  #position_2 = board[win_index_2] # load the value of the board at win_index_2
  #position_3 = board[win_index_3]
  #board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#[board].any?{|array| array == win_combination}
#if position_1 == "X" && position_2 == "X" && position_3 == "X"
#return win_combination # return the win_combination indexes that won.
  #else
    #false
  #end
#end
#end


#def won?(board)
  #WINNING_COMBINATIONS.each do |line|
    #return true if (line - board) == []
  #end
  #return false
#end
