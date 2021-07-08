# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # First column
  [1,4,7],  # Second column
  [2,5,8],  # Third column
  [0,4,8],  # First diagonal
  [2,4,6]   # Second diagonal
]

def won?(board)
  WIN_COMBINATIONS.any? do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && position_taken?(board, combo[0])
      return combo
    end
    end
end

def full?(board)
  board.all? do |index|
    index != " " && index != nil
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  end
end

def over?(board)
  if won?(board) == true || full?(board) == true || draw?(board) == true
    return true
  end
end

def winner(board)
  if won?(board)
   board[won?(board)[0]]
 end
end
