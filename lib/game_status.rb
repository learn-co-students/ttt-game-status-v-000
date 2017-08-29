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
  WIN_COMBINATIONS.detect do | win_combo |
    board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X" || board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
end
end

def full?(board)
  full_board = board
  if (full_board.all? { |character| (character == "X" || character == "O") })
    full_board = true
  else
    (full_board.any? { |any_nil| any_nil = " "})
    full_board = false
  end
  full_board
end

def draw?(board)
  if (!won?(board) && full?(board))
    true
  else (!won?(board) && !full?(board)) || won?(board)
    false
  end
end

def over?(board)
  if (won?(board) || full?(board)) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
