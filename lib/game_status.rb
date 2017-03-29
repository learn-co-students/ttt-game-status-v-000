# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,4,8],  # Left diagonal
  [0,3,6],  # Left vertical
  [1,4,7],  # Middle vertical
  [2,5,8],  # right vertical
  [2,4,6]   # right diagonal
]

  def won?(board)
    WIN_COMBINATIONS.detect do |combo|
    position_taken?(board, combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[1]]
    end
  end

  def full?(board)
    board.all?{|token| token == "X" || token == "O"}

  end

  def draw?(board)
     !won?(board) && full?(board)

  end

def over?(board)
    won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]] 

  end
  end
