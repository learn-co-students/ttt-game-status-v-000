# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
# defines a constant WIN_COMBINATIONS with arrays for each win combination
WIN_COMBINATIONS = [
  # Top row win
  [0, 1, 2],

  # Middle row win
  [3, 4, 5],

  # Bottom row win
  [6, 7, 8],

  # Left column win
  [0, 3, 6],

  # Middle column win
  [1, 4, 7],

  # Right column win
  [2, 5, 8],

  # Diagonal win 1
  [0, 4, 8],

  # Diagonal win 2
  [2, 4, 6]
]

# #won?
# returns false for an empty board
# returns false for a draw
# returns an array of matching indexes for a top row win
# returns an array of matching indexes for a middle row win
# returns an array of matching indexes for a bottom row win
# returns an array of matching indexes for a left column win
# returns an array of matching indexes for a middle column win
# returns an array of matching indexes for a right column win
# returns an array of matching indexes for a left diagonal win
# returns an array of matching indexes for a right diagonal win
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    combo.all? {|c| position_taken?(board, c) && board[c] == board[combo[0]] }
  end
end

# #full?
# returns true for a draw
# returns false for an in-progress game
def full?( board )
  board.all? do |position|
    position != " "
  end
end

# #draw
# returns true for a draw
# returns false for a game won in the first row
# returns false for a won game diagonaly
# returns false for an in-progress game
def draw?( board )
  if !won?( board ) && full?( board )
    return true
  else
    return false
  end
end

# #over
# returns true for a draw
# returns true for a won game
# returns false for an in-progress game
def over?( board )
  if draw?( board ) || won?( board )
    return true
  else
    return false
  end
end

# #winner
# returns X when X won
# returns O when O won
# returns nil when no winner
def winner( board )
  if won?( board )
    return board[ won?( board )[0] ]
  else
    return nil
  end
end
