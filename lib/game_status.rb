# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Right column
  [1,4,7],   # Middle column
  [2,5,8],  # Left column
  [0,4,8],  # Right diagonal
  [2,4,6]   # Left diagonal
]

def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      return false

  end


WIN_COMBINATIONS.each do |win_combination|
  if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
    return win_combination
  elsif
    board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
    return win_combination
  end
end
else
  return false
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
full?(board) == true && won?(board) == false
end

def over?(board)
  won?(board) == true || draw?(board) == true || full?(board) == true
end



# def winner(board)
#  token = board[won?(board)[0]]
#    return token
#
#    board[won?(board)[0]] if won?
#    return nil
#
#  end

def winner(board)
 return board[won?(board)[0]] if won?(board)
end
