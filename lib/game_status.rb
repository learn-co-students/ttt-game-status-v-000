# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],  # Top row
  [3, 4, 5],  # Middle row
  [6, 7, 8],  # Bottom row
  [0, 3, 6],  # Left column
  [1, 4, 7],  # Middle column
  [2, 5, 8],  # Right column
  [0, 4, 8],  # Left diagonal
  [2, 4, 6]   # Right diagonal
]

def won?(board)
  win_combo = false

  WIN_COMBINATIONS.each do |combination|
    if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
      win_combo = combination
    elsif board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O"
      win_combo = combination
    end
  end

  win_combo
end

def full?(board)
  board.all? { |element| element == 'X' || element == 'O' }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  # won?(board).class == Array || draw?(board) == true || full?(board) == true
  won?(board) || full?(board)
end

def winner(board)
  won_by = won?(board)

  board[won_by[0]] if won_by
end
