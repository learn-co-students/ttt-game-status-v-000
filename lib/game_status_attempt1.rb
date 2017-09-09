# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,4,8],  # Diagonal Left Top to Right Bottom
  [2,4,6],  # Diagonal Right Top to Left Bottom
  [0,3,6],  # Left Col
  [1,4,7],  # Middle Col
  [2,5,8]   # Right Col
]

# Won = true || No win = false -- *** WIP ***
def won?(board)
  WIN_COMBINATIONS.each do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_taken?(board, win_index_1) && position_1 == position_2 && position_2 == position_3
      return combination
    else
      isempty = empty?(board)
      if isempty
        return false
      end
    end
  end
end

# Check if board is empty
def empty?(board)
  board.each do |space|
    if space != " " && space != ""
      false
    else
      return true
    end
  end
end

# Confirm if board is full (true) or not (false)
def full?(board)
  board.each do |space|
    if space != " " && space != ""
      true
    else
      return false
    end
  end
end

# Checks if a game is a draw (true) or in-progress or has been won (false)
def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else
    false
  end
end
