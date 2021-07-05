require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # left diaginal
  [2,4,6]  # right diaginal
  ]
  
  def won?(board)
    WIN_COMBINATIONS.detect do |wins|
      wins1 = wins[0]
      wins2 = wins[1]
      wins3 = wins[2]
      if board[wins1] == "X" && board[wins2] == "X" && board[wins3] == "X"
        wins 
      elsif board[wins1] == "O" && board[wins2] == "O" && board[wins3] == "O"
        wins
      end 
    end 
  end 
  
  def full?(board)
    board.all? do |move|
      move == "X" || move == "O"
    end
  end 
  
  def draw?(board)
    if !won?(board) && full?(board)
      return true
    elsif !won?(board) && !full?(board)
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
  if won?(board)
  winnerwinner = won?(board)
  board[winnerwinner.first]
  end 
end 
  
  









    