# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],  # Top Row
  [3, 4, 5],  # Middle Row
  [6, 7, 8],  # Bottom Row
  [0, 3, 6],  # First Column
  [1, 4, 7],  # Second Column
  [2, 5, 8],  # Third Column
  [0, 4, 8],  # Diagonal right
  [2, 4, 6]   # Diagonal left
  ]

def won?(board)
  WIN_COMBINATIONS.detect do |wins|
    if board[wins[0]] == "X" && board[wins[1]] == "X" && board[wins[2]] == "X"
      wins
    elsif board[wins[0]] == "O" && board[wins[1]] == "O" && board[wins[2]] == "O"
      wins
    else
      false
    end
  end
end

def full?(board)
  # if board is " "
  board.all? do |pos|
    if pos == "X" || pos == "O"
      true
    else
      false
    end
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  WIN_COMBINATIONS.detect do |wins|
    if board[wins[0]] == "X" && board[wins[1]] == "X" && board[wins[2]] == "X"
      return "X"
    elsif board[wins[0]] == "O" && board[wins[1]] == "O" && board[wins[2]] == "O"
      return "O"
    end
  end
end

