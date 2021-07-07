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

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    # Return combination if winning combination is found
    if position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3) && position_1 == position_2 && position_2 == position_3
      return win_combination
    else
      # Check for completed non-winning board or empty
      if board.all?{|position| position == "X" || position == "O"}
        if !(position_1 == position_2 || position_2 == position_3)
          return false
        end
        false
      elsif board.all?{|position| position == " " || position == nil}
         return false
      end
    end
  end
end

# Check if all members of array are either X/O (true) or not (false) -- based on question/solution of user "Alberto Mayanga"
def full?(board)
  board.all?{|position| position == "X" || position == "O"}
end

# Checks if a game is a draw (true) or in-progress or has been won (false)
def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else
    return false
  end
end

# Check if game is over (true) or still in-progress (false)
def over?(board)
  if full?(board) || won?(board)
    return true
  else
    return false
  end
end

# Return who won the game (X or O)
def winner(board)
  win = won?(board)
  if win == false
    return nil
  else
    board[win[0]]
  end
end
