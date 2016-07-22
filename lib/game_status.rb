require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row win
  [3,4,5],  # Middle row win
  [6,7,8],  # Bottom row win
  [0,3,6],  # Left vertical win
  [1,4,7],  # Middle vertical win
  [2,5,8],  # right vertical win
  [0,4,8],  # Left diagonal win
  [2,4,6] # right diagonal win
]

#full? method
def full?(board)
  if !board.include?(" ")
    true
  else
    false
  end
end

#draw? method
def draw?(board)
  if !won?(board) && full?(board)
    true
  else
     !won?(board) && !full?(board) || won?(board)
    false
  end
end

#over? method
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

#winner? method
def winner(board)
    if won?(board) && board == "X"
    		Return X
    elsif won?(board) && board  == "O"
    		Return O
      else
  	 nil
   end
 end

#won method
def won?(board)
  WIN_COMBINATIONS.each do |win_index|
    if win_index.all?{|index| board[index] == "X"} || win_index.all?{|index| board[index] == "O"}
      return win_index
    else
      win_index.all?{|index| board[index] == " "}
    end
  end
  nil
end
