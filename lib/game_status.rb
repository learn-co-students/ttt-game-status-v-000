# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left Column
  [1,4,7],  # Middle Column
  [2,5,8],  # Right Column
  [0,4,8],  # TL-BR Diagonal
  [2,4,6]   # TR-BL Diagonal
]


def won?(board)
  WIN_COMBINATIONS.detect do |win|
    board[win[0]] === board[win[1]] && board[win[0]] === board[win[2]] && position_taken?(board, win[1])
  end
end

def full?(board)
  board.none? {|token| token === ' ' }
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  elsif won?(board)
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
 if won?(board)
  board[won?(board)[0]]
  end
end
