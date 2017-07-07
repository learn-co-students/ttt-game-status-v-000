# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Left diagonal
  [6,4,2]   # Right diagonal
]

def won?(board)
  # Iteration for each win_combination in the WIN_COMBINATIONS constant
  WIN_COMBINATIONS.each do |win_combination|
    # win_combination is iterating over the WIN_COMBINATIONS indexes to check for 3 matches
    # Create a numbered index variable for every win_combination
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    # Create a numbered position variable to load the value of the board at each index
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    # Check if each position is equal to "X", then return win_combination indexes that won
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    # Check if each position is equal to "O", then return win_combination indexes that won
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  # Return false for an empty board or draw
  false
end

def full?(board)
  # Check if every board position index contains "X" or "O" using #all?
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  # Game is a draw when #full? returns true AND #won? returns false
  full?(board) && !won?(board)
end

def over?(board)
  # Game is over when #won? OR #full? OR #draw? returns true
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  # If winning_move is #won? that returns true
  if winning_move = won?(board)
    # Then return if #winner is "X" or "O" by checking the first array (which is 0) in winning_move
    board[winning_move[0]]
  end
end
