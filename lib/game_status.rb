# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top rows
  [3, 4, 5], # middle rows
  [6, 7, 8], # bottom rows
  [0, 3, 6], # first vertical rows
  [1, 4, 7], # second vertical rows
  [2, 5, 8], # third vertical rows
  [0, 4, 8], # diagonal rows
  [2, 4, 6] # diagonal rows
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && board[combo[0]] != " "
      combo
    end
  end
end

def full?(board)
  board.include?(" ") ? false : true
end

# game draw if board is full with no winner
def draw?(board)
  !won?(board) && full?(board)
end

# game over if board is won, full or draw
def over?(board)
  won?(board) || full?(board) || draw?(board)
end

# return the winner, X or O
def winner(board)
  win = won?(board)
  win ? board[win[0]] : nil
end
