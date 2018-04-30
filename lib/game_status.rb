require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [0, 4, 8], #diagonal L to R
  [2, 4, 6]  #diagonal R to L
]  

def won?(board)
  WIN_COMBINATIONS.detect do | win_combination |
    board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]] && position_taken?(board, win_combination[0])
  end
end

def full?(board)
  if board.include?('') || board.include?(' ')
    return false
  end
  def draw(board) #did I solve this the wrong way, by nesting a method?
    if !won?(board) && full?(board)
     return true
   end
  end
end
    
def draw?(board) #is this redundant code somehow?
  if !won?(board) && full?(board)
    return true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
  return true
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]] #returning first instance of the winning player "X" or "O"
  else
    return nil
  end
end