# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # 1st column
  [1,4,7], # 2nd column
  [2,5,8], # 3rd column
  [0,4,8], # r-l diagonal
  [2,4,6], # l-r diagonal
]

# won?
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      return win_combination
    elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      return win_combination
    else
      false
    end
  end
end

# full?
def full?(board)
  board.all? do |board_full|
    board_full == "X" || board_full == "O"
  end
end

# draw?
def draw?(board)
  !(won?(board)) && full?(board)
end

# over?
def over?(board)
  won?(board) || full?(board) || draw?(board)
end

# winner
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
