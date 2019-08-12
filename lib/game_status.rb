# Helper Method
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def position_taken?(board, index)
 if board[index] == "" || board[index] == " " || board[index] == nil
   false
 else
   true
end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [2,5,8],
  [1,4,7]
]
def won? (board)
  WIN_COMBINATIONS.each do |win_combination|
    index0 = win_combination[0]
    index1 = win_combination[1]
    index2 = win_combination[2]

     if board[index0] == "X" && board[index1] == "X" && board[index2] == "X"
   return win_combination
 elsif board[index0] == "O" && board[index1] == "O" && board[index2] == "O"
   return win_combination
 end
 end
   return nil
end

def full?(board)
board.none?{|index| index == "" || index == " " || index == nil}
end

def draw?(board)
!won?(board) && full?(board)
end

def over?(board)
  if (won?(board) || full?(board) || draw?(board))
  return true
else
  false
end
end

def winner(board)
  if !won?(board)
    return nil
  end
  board[won?(board)[0]]
end
