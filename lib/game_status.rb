# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    position_1 = board[win_combination[0]]
    position_2 = board[win_combination[1]]
    position_3 = board[win_combination[2]]

    if position_1 == "X" && position_2 == "X" && position_3 == "X" ||
      position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.any? do |space|
    if space == "" || space == " "
      return false
    end
  end
  return true
end

def draw?(board)
  if won?(board)
    return false
  elsif full?(board)
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
  winning_index = won?(board)
  if winning_index
    if board[winning_index[0]] == "X"
      return "X"
    elsif board[winning_index[0]] == "O"
      return "O"
    end
  else
    return nil
  end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # mid row win
  [6,7,8], # bot row win
  [0,3,6], # left col win
  [1,4,7], # mid col win
  [2,5,8], # right col win
  [0,4,8], # diag 1 win
  [2,4,6] # diag 2 win
]
