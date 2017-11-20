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
  [0,4,8], # Diagonal 1
  [6,4,2]  # Diagonal 2
]
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board)

  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[1]] == board[win_combination[2]] &&
    position_taken?(board, win_combination[0])
  end

end

def full?(board)
  board.none? {|i| i == " "}
end

def draw?(board)
  !(won?(board)) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return
    nil
  end
end
