# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top Row
  [3,4,5], # Middle Row
  [6,7,8], # Bottom Row
  [0,3,6], # Left Column
  [1,4,7], # Middle Column
  [2,5,8], # Right Column
  [0,4,8], # Left to Right Diagonal
  [6,4,2]  # Right to Left Diagonal
]

# define won? method
def won?(board)
  WIN_COMBINATIONS.detect {|win_index| win_index if board[win_index[0]] == board[win_index[1]] && board[win_index[1]] == board[win_index[2]] && board[win_index[0]] != " "}
end

# define full? method
def full?(board)
  board.select{|pos| pos == " "} == []
end

# define draw? method
def draw?(board)
  won?(board) == nil && full?(board)
end

# define over? method
def over?(board)
  if won?(board) != nil
    true
  else
    draw?(board)
  end
end

# define winner method
def winner(board)
  if won?(board) != nil
    win_player = won?(board)
    board[win_player[0]]
  else
    nil
  end
end
