# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Diagonal top-left to bottom-right
  [2,4,6] # Diagonal top-right to bottom-left
]

def won?(board)
  WIN_COMBINATIONS.each do |current_combo|
    position_1 = board[current_combo[0]]
    position_2 = board[current_combo[1]]
    position_3 = board[current_combo[2]]
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return current_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return current_combo
    else
      false
    end
  end
  return false
end

def full?(board)
  is_full = [0,1,2,3,4,5,6,7,8].all? do |each_space|
    position_taken?(board, each_space)
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
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
  winning_combo = won?(board)
  if winning_combo == false || nil
    return nil
  else
    return board[winning_combo[0]]
  end
end
