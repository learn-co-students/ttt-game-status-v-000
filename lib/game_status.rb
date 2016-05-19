#require 'pry'
# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #first column
  [1,4,7], #second column
  [2,5,8], #third column
  [0,4,8], #first diagonal
  [2,4,6] #second diagonal
]
# won?(board) returns winning combination of tokens, if present
def won?(board)
   WIN_COMBINATIONS.any? do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_taken?(board,win_index_1) && position_1 == position_2 && position_2 == position_3
      #binding.pry
      return win_combo
    end
  end
end

# full?(board) monitors board status, returns false if there is an available space to play
def full?(board)
  board.all? {|value| value != (" " || "" || nil)}
end

# draw(board) monitors board status in terms of whether the game is won, can no longer be played because the board is full
def draw?(board)
  if !(won?(board)) && full?(board)
    return true  # returns true if board is a draw: can't be won, and is full
  end # otherwise returns false for a board that's won or can still be played
end

# over?(board) monitors game status, based on whether game is won or a draw
def over?(board)
  if won?(board) || full?(board)
    return true
  end
end

# winner(board) returns the winning token, X or O, of a winning game
def winner(board)
  if won?(board)
    winning_array=won?(board)
    return board[winning_array[0]]
  end
end
