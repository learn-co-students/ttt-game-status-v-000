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
#won method
def won?(board)
  WIN_COMBINATIONS.detect do |winning|
    board[winning[0]] == board[winning[1]] &&
    board[winning[1]] == board[winning[2]] &&
    position_taken?(board,winning[0])
  end
end
#full
def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end
#draw
def draw?(board)
  full?(board) && !won?(board)
end
#over
def over?(board)
  full?(board) || won?(board) || draw?(board)
end
#winner
def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
