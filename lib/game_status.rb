require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [ #board[combo[0]]
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [6, 4, 2],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
  end
end

def full?(board)
  board.none? do |token|
    token == " "
    # blank will equal either "X", "O", " "
    # how do we check if blank is equal to a empty space?
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    puts "Draw"
    true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
  true
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
# OR
# def winner(board)
#   if won?(board)
#     win_combo = won?(board)
#     return board[win_combo.last]
#   end
# end
# ETC
