# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top-row
  [3, 4, 5], #mid-row
  [6, 7, 8], #bottom-row
  [0, 3, 6], #left-col
  [1, 4, 7], #mid-col
  [2, 5, 8], #right-col
  [0, 4, 8], #top-left to btm-right
  [2, 4, 6]  #top-right to btm-left
]

def won? (board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      win_combination
    else
      false
    end

  end
end

#return winning indexes if win
#return false if not
#check the 3 numbers in top-row with board indexes

def full?(board)
  board.none? {|board_index| board_index == " " || board_index == ""}
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
