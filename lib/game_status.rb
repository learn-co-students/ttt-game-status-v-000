# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if all_won?(board, "X", combo)
      return combo
    elsif all_won?(board, "O", combo)
      return combo
    end
  end
  else
    false
end

def all_won?(board, token, win_combo)
  win_combo.all? do |position|
    board[position] == token
  end
end

def full?(board)
  board.all? {|token| token == "X" || token == "O"}
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  won?(board) ||  draw?(board) || full?(board) ? true : false
end

def winner(board)
  if over?(board)
    return board[won?(board).first]
  else
    nil
  end
end
