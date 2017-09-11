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
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_array|
    win_index_0 = win_array[0]
    win_index_1 = win_array[1]
    win_index_2 = win_array[2]

    value_at_win_index_0 = board[win_index_0]
    value_at_win_index_1 = board[win_index_1]
    value_at_win_index_2 = board[win_index_2]

    if value_at_win_index_0 == "X" && value_at_win_index_1 == "X" && value_at_win_index_2 == "X"
      return win_array
    elsif value_at_win_index_0 == "O" && value_at_win_index_1 == "O" && value_at_win_index_2 == "O"
      return win_array
    end
  end
  false
end

def full?(board)
  full = true
  board.each do |position|
    if position != "X" && position != "O"
      full = false
      break
    end
  end
  return full
end

def draw?(board)
  if won?(board)
    return false
  else
    if full?(board)
      return true
    else
      return false
    end
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)

  win_array = won?(board)
  if !win_array
    return nil
  end

  if board[win_array[0]] == "X"
    return "X"
  elsif board[win_array[0]] == "O"
    return "O"
  end

end
