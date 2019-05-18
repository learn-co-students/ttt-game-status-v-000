# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6] # Right diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_array|
    board[win_array[0]] == board[win_array[1]] && board[win_array[1]] == board[win_array[2]] && position_taken?(board, win_array[0])
  end
end

def full?(board)
  board.none? do |slot|
    slot == " " || slot == ""
  end
  end

  def draw?(board)
    if full?(board) && !won?(board)
      return true
    end
  end

def over?(board)
  if won?(board) || full?(board) || full?(board)
    return true
  end
end

def winner(board)
  if win_array = won?(board)
    win = board[win_array[0]]
    return win
  end
end
