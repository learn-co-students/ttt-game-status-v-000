# Helper Method
def position_taken?(board, index)
  #checks if index on board is NOT nil OR board is empty
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
  #checks if board is NOT empty
  if !board.include?(" ")
    true
  else
    false
  end
end

#draw? method
def draw?(board)
  #checks if board is NOT won AND board is full
  if !won?(board) && full?(board)
    true
  else
    #checks is board is NOT won AND board is NOT full OR board is won
     !won?(board) && !full?(board) || won?(board)
    false
  end
end

#over? method
def over?(board)
  #checks if board is won OR board is a draw OR board is full
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

#winner? method
def winner(board
  #checks if board is won
  if won?(board
  #gets win_combo from board that is won
	win_combo = won?(board)
  #index = first array in win_combo out of the 3
  index=win_combo[0]
  #returns either X or O from the board index
  board[index]
  end
end

#won method
def won?(board)
  #checks the win_index on each WIN_COMBINATIONS
  WIN_COMBINATIONS.each do |win_index|
    #checks winning combination (win_index) on board to see if all were X or O
    if win_index.all?{|index| board[index] == "X"} || win_index.all?{|index| board[index] == "O"}
      #returns the winning combination
      return win_index
    else
      #returns NOT won if no winning combination on board
      win_index.all?{|index| board[index] == " "}
    end
  end
  nil
end
