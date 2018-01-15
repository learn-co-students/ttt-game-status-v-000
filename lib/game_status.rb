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
  top_row_win = WIN_COMBINATIONS[0]
  mid_row_win = WIN_COMBINATIONS[1]
  bot_row_win = WIN_COMBINATIONS[2]
  l_col_win = WIN_COMBINATIONS[3]
  c_col_win = WIN_COMBINATIONS[4]
  r_col_win = WIN_COMBINATIONS[5]
  l_diag_win = WIN_COMBINATIONS[6]
  r_diag_win = WIN_COMBINATIONS[7]

  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
    top_row_win
  elsif board[mid_row_win[0]] == "X" && board[mid_row_win[1]] == "X" && board[mid_row_win[2]] == "X"
    mid_row_win
  elsif board[bot_row_win[0]] == "X" && board[bot_row_win[1]] == "X" && board[bot_row_win[2]] == "X"
    bot_row_win
  elsif board[l_col_win[0]] == "X" && board[l_col_win[1]] == "X" && board[l_col_win[2]] == "X"
    l_col_win
  elsif board[c_col_win[0]] == "X" && board[c_col_win[1]] == "X" && board[c_col_win[2]] == "X"
    c_col_win
  elsif board[c_col_win[0]] == "X" && board[r_col_win[1]] == "X" && board[r_col_win[2]] == "X"
    r_col_win
  elsif board[l_diag_win[0]] == "X" && board[l_diag_win[1]] == "X" && board[l_diag_win[2]] == "X"
    l_diag_win
  elsif board[r_diag_win[0]] == "X" && board[r_diag_win[1]] == "X" && board[r_diag_win[2]] == "X"
    r_diag_win
      ## "O"  wins
  elsif board[top_row_win[0]] == "O" && board[top_row_win[1]] == "O" && board[top_row_win[2]] == "O"
    top_row_win
  elsif board[mid_row_win[0]] == "O" && board[mid_row_win[1]] == "O" && board[mid_row_win[2]] == "O"
    mid_row_win
  elsif board[bot_row_win[0]] == "O" && board[bot_row_win[1]] == "O" && board[bot_row_win[2]] == "O"
    bot_row_win
  elsif board[l_col_win[0]] == "O" && board[l_col_win[1]] == "O" && board[l_col_win[2]] == "O"
    l_col_win
  elsif board[c_col_win[0]] == "O" && board[c_col_win[1]] == "O" && board[c_col_win[2]] == "O"
    c_col_win
  elsif board[r_col_win[0]] == "O" && board[r_col_win[1]] == "O" && board[r_col_win[2]] == "O"
    r_col_win
  elsif board[l_diag_win[0]] == "O" && board[l_diag_win[1]] == "O" && board[l_diag_win[2]] == "O"
    l_diag_win
  elsif board[r_diag_win[0]] == "O" && board[r_diag_win[1]] == "O" && board[r_diag_win[2]] == "O"
    r_diag_win

end
end

def full?(board)
  board.all? {|i| i != " "}
end

def draw?(board)
  if won?(board)
    false
  elsif full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board)
    true
  elsif draw?(board)
    true
  else
    false
  end
end

def winner(board)
  top_row_win = WIN_COMBINATIONS[0]
  mid_row_win = WIN_COMBINATIONS[1]
  bot_row_win = WIN_COMBINATIONS[2]
  l_col_win = WIN_COMBINATIONS[3]
  c_col_win = WIN_COMBINATIONS[4]
  r_col_win = WIN_COMBINATIONS[5]
  l_diag_win = WIN_COMBINATIONS[6]
  r_diag_win = WIN_COMBINATIONS[7]


  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
    "X"
  elsif board[mid_row_win[0]] == "X" && board[mid_row_win[1]] == "X" && board[mid_row_win[2]] == "X"
    "X"
  elsif board[bot_row_win[0]] == "X" && board[bot_row_win[1]] == "X" && board[bot_row_win[2]] == "X"
    "X"
  elsif board[l_col_win[0]] == "X" && board[l_col_win[1]] == "X" && board[l_col_win[2]] == "X"
    "X"
  elsif board[c_col_win[0]] == "X" && board[c_col_win[1]] == "X" && board[c_col_win[2]] == "X"
    "X"
  elsif board[l_diag_win[0]] == "X" && board[l_diag_win[1]] == "X" && board[l_diag_win[2]] == "X"
    "X"
  elsif board[r_diag_win[0]] == "X" && board[r_diag_win[1]] == "X" && board[r_diag_win[2]] == "X"
    "X"
      ## "O"  wins
  elsif board[top_row_win[0]] == "O" && board[top_row_win[1]] == "O" && board[top_row_win[2]] == "O"
    "O"
  elsif board[mid_row_win[0]] == "O" && board[mid_row_win[1]] == "O" && board[mid_row_win[2]] == "O"
    "O"
  elsif board[bot_row_win[0]] == "O" && board[bot_row_win[1]] == "O" && board[bot_row_win[2]] == "O"
    "O"
  elsif board[l_col_win[0]] == "O" && board[l_col_win[1]] == "O" && board[l_col_win[2]] == "O"
    "O"
  elsif board[c_col_win[0]] == "O" && board[c_col_win[1]] == "O" && board[c_col_win[2]] == "O"
    "O"
  elsif board[l_diag_win[0]] == "O" && board[l_diag_win[1]] == "O" && board[l_diag_win[2]] == "O"
    "O"
  elsif board[r_diag_win[0]] == "O" && board[r_diag_win[1]] == "O" && board[r_diag_win[2]] == "O"
    "O"
  end
end
