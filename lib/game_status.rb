# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] && board[win_combination[2]] == board[win_combination[1]] && board[win_combination[0]] != " "
  end
end

def full?(board)
  open_spaces = board.select do |index|
    index == " "
  end
    return open_spaces.length <= 0
end

def draw?(board)
 full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  winning_positions = won?(board)
  # returns nil unless winning_positions is truthy
  return nil unless winning_positions
  return board[winning_positions[0]]
end
