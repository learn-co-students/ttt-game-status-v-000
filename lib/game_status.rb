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
  top_row_win = WIN_COMBINATIONS[0]
  mid_row_win = WIN_COMBINATIONS[1]
  bot_row_win = WIN_COMBINATIONS[2]
  left_row_win = WIN_COMBINATIONS[3]
  mid_col_win = WIN_COMBINATIONS[4]
  rgt_col_win = WIN_COMBINATIONS[5]
  lef_di_win = WIN_COMBINATIONS[6]
  rgt_di_win = WIN_COMBINATIONS[7]

  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X" ||
    board[top_row_win[0]] == "O" && board[top_row_win[1]] == "O" && board[top_row_win[2]] == "O"
  return top_row_win

elsif board[mid_row_win[0]] == "X" && board[mid_row_win[1]] == "X" && board[mid_row_win[2]] == "X" ||
  board[mid_row_win[0]] == "O" && board[mid_row_win[1]] == "O" && board[mid_row_win[2]] == "O"
  return mid_row_win

elsif board[bot_row_win[0]] == "X" && board[bot_row_win[1]] == "X" && board[bot_row_win[2]] == "X" ||
  board[bot_row_win[0]] == "O" && board[bot_row_win[1]] == "O" && board[bot_row_win[2]] == "O"
  return bot_row_win

elsif board[left_row_win[0]] == "X" && board[left_row_win[1]] == "X" && board[left_row_win[2]] == "X" ||
  board[left_row_win[0]] == "O" && board[left_row_win[1]] == "O" && board[left_row_win[2]] == "O"
  return left_row_win

elsif board[mid_col_win[0]] == "X" && board[mid_col_win[1]] == "X" && board[mid_col_win[2]] == "X" ||
  board[mid_col_win[0]] == "O" && board[mid_col_win[1]] == "O" && board[mid_col_win[2]] == "O"
  return mid_col_win

elsif board[rgt_col_win[0]] == "X" && board[rgt_col_win[1]] == "X" && board[rgt_col_win[2]] == "X" ||
  board[rgt_col_win[0]] == "O" && board[rgt_col_win[1]] == "O" && board[rgt_col_win[2]] == "O"
  return rgt_col_win

elsif board[lef_di_win[0]] == "X" && board[lef_di_win[1]] == "X" && board[lef_di_win[2]] == "X" ||
  board[lef_di_win[0]] == "O" && board[lef_di_win[1]] == "O" && board[lef_di_win[2]] == "O"
  return lef_di_win

elsif board[rgt_di_win[0]] == "X" && board[rgt_di_win[1]] == "X" && board[rgt_di_win[2]] == "X" ||
  board[rgt_di_win[0]] == "O" && board[rgt_di_win[1]] == "O" && board[rgt_di_win[2]] == "O"
  return rgt_di_win

  else
  false

  end #if

end  #method

def full?(board)
  if board.any? {|space| space == " "}
    return false
  else
    return true
  end #if
end #method

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end  #if
end  #method

def over?(board)
  if full?(board)
    true
  end  #if
end  #method

def winner(board)
winny = []
  if won?(board)
winny << won?(board)
  return board[winny[0][0]]
  end
end
