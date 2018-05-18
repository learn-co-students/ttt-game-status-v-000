# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
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

def won?(board)
  WIN_COMBINATIONS.detect do |winning_combo|
   board[winning_combo[0]] == board[winning_combo[1]] &&
   board[winning_combo[1]] == board[winning_combo[2]] &&
   position_taken?(board, winning_combo[0])
   end
end

def full?(board)
  board.all? do |free|
  free == "X" || free == "O"
  end
end

def draw?(board)
 if !won?(board) && full?(board)
   true
 elsif !won?(board) && !full?(board)
  false
 elsif won?(board)
  false
 end 
end

def over?(board)
  won?(board) || draw?(board) || full?(board) 
end

def winner(board)
 if won?(board)
   board[won?(board).first]
 else
   nil
 end
end