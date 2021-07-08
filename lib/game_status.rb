# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  position = []
  
  # looking at each array(win)in the WIN_COMBINATIONS constant
  WIN_COMBINATIONS.each do |win|
    # looking at each index in the win array
    win.each do |index|
      # checking each index in the win array to see if position is taken (true/false) and saving to array position
      position << position_taken?(board, index)
    end
    # checking to see if position array holds all TRUE values.
    all_true = position.all? do |pos| 
      pos 
      end
      
    if all_true
      # checking to see if those positions are the same character
      if board[win[0]] == board[win[1]] && board[win[0]]== board[win[2]]
        return win
      else
        position = []
      end
      
    else
      position = []
    end
  end
  # returns false is no winning combo found
  return false
end

def full? (board)
  full = board.none? {|index| index == " " || index == nil }
end

def draw? (board)
  # TRUE if not won && full
  # FALSE if not won && not full
  # FALSE is not full
  
  win = won?(board)
  full = full?(board)
  
  if !win && full
    return true
  else
    return false
  end
end

def over? (board)
  win = won?(board)
  full = full?(board)
  draw = draw?(board)
  
  if win || full || draw
    return true
  else
    return false
  end
end

def winner (board)
  x_or_o = won?(board)
  # this returns the winning array of board
  
  if x_or_o == false
    return nil
  else
    return board[x_or_o[0]]
  end
end