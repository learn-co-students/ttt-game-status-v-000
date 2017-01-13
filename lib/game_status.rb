# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # TOP ROW
  [3, 4, 5], # MIDDLE ROW
  [6, 7, 8], # BOTTOM ROW
  [0, 3, 6], # FIRST COLUMN
  [1, 4, 7], # SECOND COLUMN
  [2, 5, 8], # THIRD COLUMN
  [0, 4, 8], # DESCENDING SLOPE
  [2, 4, 6]  # ASCENDING SLOPE
]

def won?(board)
  if board.all?{|i| i == " "}
    return false
  end
  WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  end
  return false
end

def full?(board)
  if board.include?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if board.none?{|i| i == " "} && won?(board) == false
    return true
  end
end

def over?(board)
  if won?(board) == true || full?(board) == true || draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) != false
    return board[won?(board)[0]]
  end
end
