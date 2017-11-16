# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # Diagonal upper-left lower-right
  [2, 4, 6]  # Diagonal upper-right lower-left
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    position_taken?(board, win_combo[0]) &&
    board[win_combo[0]] == board[win_combo[1]] &&
    board[win_combo[0]] == board[win_combo[2]]
  end
end

def full?(board)
  board.all? do |index|
    index != " "
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if game_pos = won?(board)
    board[game_pos[1]]
  end
end



#The code below was one of my steps on the way to the right code... it didn't work outright, but I did pass some of the won? tests with this...
# def won?(board)
#   WIN_COMBINATIONS.detect do |win_combo|
#     board[win_combo[0]]
#     board[win_combo[1]]
#     board[win_combo[2]]
#
#     if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
#       true
#     elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
#     else
#       false
#     end
#   end
# end
