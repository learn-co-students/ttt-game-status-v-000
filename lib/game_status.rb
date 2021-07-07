require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
       board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O" ||
       board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
    end
end

def full? (board)
    board.all? do |space|
      space == "O" || space == "X"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    return true
  end
end

def winner(board)
  if draw?(board) || !won?(board)
    return nil
  end
   index = won?(board)
  return board[index[1]]
end
