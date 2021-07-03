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
  WIN_COMBINATIONS.each do |win_index|
    index_0 = win_index[0]
    index_1 = win_index[1]
    index_2 = win_index[2]

    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_index
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_index
    end
  end
  return false
end

def full?(board)
    if board.select {|i| i == "X" || i == "O"} == board
      return true
    else
      return false
    end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == false
    return nil
  else
    return board[won?(board)[0]]
  end
end
