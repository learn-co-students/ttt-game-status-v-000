# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  winning_combo = false
  WIN_COMBINATIONS.each do |combo|
    winning_x = combo.each.all? do |position|
      board[position] == "X"
    end
    winning_o = combo.each.all? do |position|
      board[position] == "O"
    end
    if winning_x || winning_o
      winning_combo = combo
    end
  end
  return winning_combo
end

def full?(board)
  full = board.all? do |position|
    position != " "
  end
end

def draw?(board)
  won = won?(board)
  full = full?(board)

  if !won && full
    return true
  else
    return false
  end

end

def over?(board)
  #game is won, is a draw, or is full
  won = won?(board)
  draw = draw?(board)
  full = full?(board)

  if won || draw || full
    return true
  else
    return false
  end
end

def winner(board)
  won = won?(board)
  first_position = false
  name = nil
  if won
    first_position = won[0]
    name = board[first_position]
  end
  return name
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
