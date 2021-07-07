# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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
  win_index_1 = win_combo[0]
  win_index_2 = win_combo[1]
  win_index_3 = win_combo[2]



  if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
    return win_combo # return the win_combination indexes that won.
  elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      return win_combo # return the win_combination indexes that won.
  else
    false
  end

  end
end
def full?(board)
board.all? {|token| token == "X" || token == "O" }
end

def draw?(board)
!won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  WIN_COMBINATIONS.detect do |win|
    win_index_1 = win[0]
    win_index_2 = win[1]
    win_index_3 = win[2]



    if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      return "X" # return the win_combination indexes that won.
    elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
        return "O"# return the win_combination indexes that won.
    else
      false
    end
end
end
