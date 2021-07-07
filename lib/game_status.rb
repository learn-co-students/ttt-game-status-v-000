# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #Top horizontal row
  [3, 4, 5], #Middle horizontal row
  [6, 7, 8], #Bottom horizontal row
  [0, 3, 6], #Left vertical row
  [1, 4, 7], #Middle vertical row
  [2, 5, 8], #Right vertical row
  [6, 4, 2], #Bottom left diagonal row
  [8, 4, 0] #Bottom right diagonal row
]