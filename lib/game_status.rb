# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def empty_board?(board)
  board.all? do |position|
  position == nil || position == "" || position == " "
 end
end

def draw?(board)
  if full_board?(board) == true
    return true
  end
end

def top_board_win?(board)
  if board[0] == "X" &&  board[1] == "X" && board[2] == "X"
    return true
   elsif board[0] == "O" &&  board[1] == "O" && board[2] == "O"
     return true
  end
end
 
 WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Diagonal A
  [2,4,6], # Diagonal B
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8] # Right column
]

def won?(board)
WIN_COMBINATIONS.detect do |position| 
  if board[position[0]] == "X" && board[position[1]] == "X" && board[position[2]] == "X"
    position
  elsif board[position[0]] == "O" && board[position[1]] == "O" && board[position[2]] == "O"
    position
  else
    false
  end
  end 
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end
 
def draw?(board)
  if !won?(board) && full?(board)
    true
  # elsif !won?(board) && !full?(board)
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  elsif 
    false
  end
end

def winner(board)
  if !won?(board)
    return nil
  elsif won?(board)
    return board[won?(board)[0]]
end
end

  