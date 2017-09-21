# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# POSSIBLE WINNING COMBINATIONS
WIN_COMBINATIONS = [
  [ 0, 1, 2 ], # top row
  [ 3, 4, 5 ], # middle row
  [ 6, 7, 8 ], # bottom row
  [ 0, 3, 6 ], # left column
  [ 1, 4, 7 ], # middle column
  [ 2, 5, 8 ], # right column
  [ 0, 4, 8 ], # diagonal top-bottom
  [ 2, 4, 6 ]  # diagonal bottom-top
]

# WINNING COMBO?
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 =="X" && position_3 == "X"
      return combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return combo
    end
  end
  false
end

# BOARD FULL
def full?(board)
  if board.all? {|value| value == "X" || value == "O"}
    return true
  else
    false
  end
end

# GAME DRAW
def draw?(board)
  if won?(board) == false && board.all? {|value| value == "X" || value =="O"}
    return true
  else
    false
  end
end

# GAME OVER
def over?(board)
  if won?(board) != false || full?(board) == true || draw?(board) == true
    return true
  else
    false
  end
end

# THE WINNER IS...
def winner(board)
  if won?(board) != false
    return board[won?(board)[0]]
  end
end
