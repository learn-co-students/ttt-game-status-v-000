# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [2,4,6]
]
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    position_taken?(board, combo[1]) && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
  end
end
def full?(board)
board.all? do |full_board|
full_board == "X" || full_board == "O"
end
end
def draw?(board)
if full?(board) && !won?(board)
 true
elsif won?(board)
 false
elsif !full?(board) && !won?(board)
 false
end
end
def over?(board)
if won?(board) || draw?(board) || full?(board)
  true
else
  false
end
end
def winner(board)
if !!won?(board)
board[won?(board)[0]]
end
end
