board = Array.new(9, " ")

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X"  && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O"  && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end
    false
end

def full?(board)
  board.all? do |token|
    token == "X" || token == "O"
  end
end

def draw?(board)
  if won?(board)
    return false
  elsif !(full?(board))
    return false
  else
    return true
  end
end

def over?(board)
  if won?(board)
    return true
  elsif full?(board)
    return true
  elsif draw?(board)
    return true
  else !(full?(board))
    return false
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

      if position_1 == "X"  && position_2 == "X" && position_3 == "X"
        return "X"
      elsif position_1 == "O"  && position_2 == "O" && position_3 == "O"
        return "O"
      else
        false
      end
    end
    return nil
end
