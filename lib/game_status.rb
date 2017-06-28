# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

  board = [" ", " ", " ", "X", "X", "X", " ", " ", " "]
WIN_COMBINATIONS =
[[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[2,5,8],[1,4,7],[0,3,6]]

def won?(board)
if board[0] == "X" && board[1] == "X" && board[2] == "X" || board[0] == "O" && board[1] == "O" && board[2] == "O"
  WIN_COMBINATIONS[0]
elsif board[3] == "X" && board[4] == "X" && board[5] == "X" || board[3] == "O" && board[4] == "O" && board[5] == "O"
  WIN_COMBINATIONS[1]
elsif board[6] == "X" && board[7] == "X" && board[8] == "X" || board[6] == "O" && board[7] == "O" && board[8] == "O"
  WIN_COMBINATIONS[2]
elsif board[0] == "X" && board[4] == "X" && board[8] == "X" || board[0] == "O" && board[4] == "O" && board[8] == "O"
  WIN_COMBINATIONS[3]
elsif board[2] == "X" && board[4] == "X" && board[6] == "X" || board[2] == "O" && board[4] == "O" && board[6] == "O"
  WIN_COMBINATIONS[4]
elsif board[2] == "X" && board[5] == "X" && board[8] == "X" || board[2] == "O" && board[5] == "O" && board[8] == "O"
  WIN_COMBINATIONS[5]
elsif board[1] == "X" && board[4] == "X" && board[7] == "X" || board[1] == "O" && board[4] == "O" && board[7] == "O"
  WIN_COMBINATIONS[6]
elsif board[0] == "X" && board[3] == "X" && board[6] == "X" || board[0] == "O" && board[3] == "O" && board[6] == "O"
  WIN_COMBINATIONS[7]
else
  false

end
end
  board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
  board = ["X", " ", "X", "O", " ", "X", "O", " ", "O"]
def full?(board)
  if board.include?(" ")
    false
  else
    true

  end
end
board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
    false
end
end

def over?(board)
  if draw?(board) == true || won?(board) != false || full?(board) == true
    true
  else
    false
  end
end
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
def winner(board)
  if won?(board) == WIN_COMBINATIONS[0]
    board[0]
  elsif won?(board) == WIN_COMBINATIONS[1]
    board[3]
  elsif won?(board) == WIN_COMBINATIONS[2]
    board[6]
  elsif won?(board) == WIN_COMBINATIONS[3]
    board[0]
  elsif won?(board) == WIN_COMBINATIONS[4]
    board[2]
  elsif won?(board) == WIN_COMBINATIONS[5]
    board[2]
  elsif won?(board) == WIN_COMBINATIONS[6]
    board[1]
  elsif won?(board) == WIN_COMBINATIONS[7]
    board[0]
  else
  end
end
