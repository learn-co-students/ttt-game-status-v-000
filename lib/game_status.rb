# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]          ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |win_combination| #win_combination is the element of what we are iterating through
    win_index_1 = win_combination[0] #win_index_1 is 0 on line 8
    win_index_2 = win_combination[1] #win_index_2 is 1 on line 8
    win_index_3 = win_combination[2] #win_index_3 is 2 on line 8
    
    
    #we don't go all the way to win_index_8, for example, because we are only interating 3 elements, which is what each sub-array has in the  WIN_COMBINATIONS constant
    
    position_1 = board[win_index_1] #taking that index, and passing it to board
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    # the same with position- we don't go all the way to position_8, for example, because we are only examining 3 positions that would give a winning combination.
    
    if position_1 =="X" && position_2 =="X" && position_3 =="X"
      return win_combination
    elsif position_1 =="O" && position_2 =="O" && position_3 =="O"
      return win_combination
    else #a board with no win 
       false
    end
  end
  false
end
# checking if all of those variables are equal

def full?(board)
  if board.detect {|i| i == " " || i == nil}
    false
  else
    true
  end
end
    
    
def draw?(board)
  if !won?(board) && full?(board)
    true
  else false
  end
end  


def over?(board)
  if draw?(board)
    return true
  elsif won?(board) && full?(board)
    return true
  elsif won?(board) && !full?(board)
    return true
  else false
  end
end 


def winner(board)
  if winning_combo = won?(board) #even though we will use one token, we need to trust that it will return an array
  board[winning_combo[0]] #winning_combo.first the equiv to winning_combo[0]
end
end 
  
  
  #if won?(board)== false  - there's nothing run in our method (it would be nil- nothing to return )
  # nil   -- all of this is not needed (the last line is going to be the return value of the method)

  
=begin
  ./lib/game_status.rb
  WIN_COMBINATIONS    defines a constant WIN_COMBINATIONS with arrays for each win combination
  #won?    returns false for an empty board
    returns false for a draw
    returns an array of matching indexes for a top row win
    returns an array of matching indexes for a middle row win
    returns an array of matching indexes for a bottom row win
    returns an array of matching indexes for a left column win
    returns an array of matching indexes for a middle column win
    returns an array of matching indexes for a right column win
    returns an array of matching indexes for a left diagonal win
    returns an array of matching indexes for a right diagonal win
  #full?
    returns true for a draw
    returns false for an in-progress game
  #draw?
    returns true for a draw
    returns false for a game won in the first row
    returns false for a won game diagonaly
    returns false for an in-progress game
  #over?
    returns true for a draw
    returns true for a won game when the board is full
    returns true for a won game when the board is not full
    returns false for an in-progress game
  #winner
    return X when X won 
    returns O when O won 
    returns nil when no winner
=end 
  
    
  