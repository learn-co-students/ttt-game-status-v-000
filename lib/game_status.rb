# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS =
  [
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
    middle_row_win = WIN_COMBINATIONS[1]
    bottom_row_win = WIN_COMBINATIONS[2]
    col1_row_win = WIN_COMBINATIONS[3]
    col2_row_win = WIN_COMBINATIONS[4]
    col3_row_win = WIN_COMBINATIONS[5]
    diag1_row_win = WIN_COMBINATIONS[6]
    diag2_row_win = WIN_COMBINATIONS[7]


   if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
      return top_row_win
    elsif board[top_row_win[0]] == "O" && board[top_row_win[1]] == "O" && board[top_row_win[2]] == "O"
      return top_row_win

    elsif board[middle_row_win[0]] == "X" && board[middle_row_win[1]] == "X" && board[middle_row_win[2]] == "X"
      return middle_row_win
    elsif board[middle_row_win[0]] == "O" && board[middle_row_win[1]] == "O" && board[middle_row_win[2]] == "O"
      return middle_row_win

    elsif board[bottom_row_win[0]] == "X" && board[bottom_row_win[1]] == "X" && board[bottom_row_win[2]] == "X"
      return bottom_row_win
    elsif board[bottom_row_win[0]] == "O" && board[bottom_row_win[1]] == "O" && board[bottom_row_win[2]] == "O"
      return bottom_row_win

    elsif board[col1_row_win[0]] == "X" && board[col1_row_win[1]] == "X" && board[col1_row_win[2]] == "X"
      return col1_row_win
    elsif board[col1_row_win[0]] == "O" && board[col1_row_win[1]] == "O" && board[col1_row_win[2]] == "O"
      return col1_row_win


    elsif board[col2_row_win[0]] == "X" && board[col2_row_win[1]] == "X" && board[col2_row_win[2]] == "X"
      return col2_row_win
    elsif board[col2_row_win[0]] == "O" && board[col2_row_win[1]] == "O" && board[col2_row_win[2]] == "O"
      return col2_row_win


    elsif board[col3_row_win[0]] == "X" && board[col3_row_win[1]] == "X" && board[col3_row_win[2]] == "X"
      return col3_row_win
    elsif board[col3_row_win[0]] == "O" && board[col3_row_win[1]] == "O" && board[col3_row_win[2]] == "O"
      return col3_row_win

    elsif board[diag1_row_win[0]] == "X" && board[diag1_row_win[1]] == "X" && board[diag1_row_win[2]] == "X"
      return diag1_row_win
    elsif board[diag1_row_win[0]] == "O" && board[diag1_row_win[1]] == "O" && board[diag1_row_win[2]] == "O"
      return diag1_row_win

    elsif board[diag2_row_win[0]] == "X" && board[diag2_row_win[1]] == "X" && board[diag2_row_win[2]] == "X"
      return diag2_row_win
    elsif board[diag2_row_win[0]] == "O" && board[diag2_row_win[1]] == "O" && board[diag2_row_win[2]] == "O"
      return diag2_row_win

    else
      return false
    end
  end

  def draw?(board)
    if full?(board) && won?(board) == false
      return true
    else
      return false
    end
  end

  def full?(board)
    # if the board contains no open spaces (if true)
    if board.none? {|i| i == " "}
      return true
    else
      return false
    end
  end

  def over?(board)
    if draw?(board) || full?(board) || won?(board)
      return true
    end
  end

  def winner(board)
    puts won?(board)
    if won?(board) != false
      win = won?(board)
      token = board[win[0]]
      return token
    elsif won?(board) == false
      return nil
    end
  end
