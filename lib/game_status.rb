# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.detect do | win_combination |
      (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X")||
      (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
  end
end

def full?(board)
  board.all? do |spot|
    (spot == "X") || (spot == "O")
  end
end

def draw?(board)
  if (!full?(board) && (won?(board) == false)) || won?(board)
    false
  elsif full?(board) == true
    true
  end
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  won = won?(board) #get the indexes of the winning player
  if won # if it did not return false, you can also use an array check
    board[won[0]] # return the item on the board at the winning index
  end
end
