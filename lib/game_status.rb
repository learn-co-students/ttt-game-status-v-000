# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2],
]
def won?(board)
  # position_taken?(board, 0-8)
 WIN_COMBINATIONS.detect do |combo|
   board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] &&
position_taken?(board,combo[0])
end
end

def full?(board)
  board.all?{|item|item == "X" || item == "O"}
end
# not !won and !!full board => true
# not !won and not !full board = false
# won = false
def draw?(board)
  !won?(board)
end

def over?(board)
  !!(won?(board) || draw?(board) == full?(board))
end

def winner(board)
  if won?(board)
     if board.count("X") > board.count("O")
       "X"
else
  "O"
end
else
  
  end

end
