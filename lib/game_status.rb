# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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
  no_combination = false
  WIN_COMBINATIONS.each do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      no_combination = true
      return combination # return the win_combination indexes that won.
    else
      no_combination = false
    end
  end
  if !no_combination
    return false
  end
end

def full?(board)
  is_full = true
  board.each do |position_value|
    if (position_value == "" || position_value == " " || position_value == nil)
      is_full = false
      return false
    else
      is_full = true
    end
  end
  return is_full
end

def draw?(board)
  if !won?(board)
    return true
  else
    return false
  end
end


def over?(board)
  if won?(board)
    return true
  elsif full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  puts won?(board)
  if won?(board) == false
    return nil
  elsif board[won?(board)[0]] == "X"
    return "X"
  else
    return "O"  
  end
end
