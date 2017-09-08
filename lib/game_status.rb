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
   [6,4,2]
 ]
 def won?(board)
   win_combo = WIN_COMBINATIONS.find { |combo| board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"}
 end
def full?(board)
  board.all?{|space| space == "X" || space == "O"}
end
def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end
def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  pippo = won?(board) #pippo should return true if there's a winner
  pippo != nil ? board[pippo[0]] : nil
end
