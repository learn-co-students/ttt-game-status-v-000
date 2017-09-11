# Helper Method
#def position_taken?(board, index)
#  !(board[index].nil? || board[index] == " ")
#end

def position_taken?(board, index, char)
  if board[index] == char #|| board[index] == "O"
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

# Your #won? method should accept a board as an argument and return false/nil if
# there is no win combination present in the board and return the winning
# combination indexes as an array if there is a win.
def won?(board)
  winner = []
  won=WIN_COMBINATIONS.any? do |arr|
    arr.all? {|position| position_taken?(board,position,"X")} || arr.all? {|position| position_taken?(board,position,"O")}
    if arr.all? {|position| position_taken?(board,position,"X")} || arr.all? {|position| position_taken?(board,position,"O")}
      winner = arr
    end
  end
  if won
    return winner
  else
    return false
  end
end


# The #full? method should accept a board and return true if every element
# in the board contains either an "X" or an "O". The #full? method doesn't need
# to worry about draws or winning combinations, simply return false if there
# is an available position and true if there is not.
def full?(board)
  # indices = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  # if indices.all? {|position| position_taken?(board, position, "X") || position_taken?(board, position, "O")}
    # return true
  # elsif board.include?(" ")
    # return false
    if board.include?(" " || "" || nil)
      return false
    else
      return true
  end
end


# Build a method #draw? that accepts a board and returns true if the board has
# not been won and is full and false if the board is not won and the board
# is not full, and false if the board is won.
def draw?(board)
  if won?(board)
    return false
  else
    return true
  end
end


# Build a method #over? that accepts a board and returns true if the board has
# been won, is a draw, or is full.
def over?(board)
  if won?(board) || full?(board)
    return true
  end
end


# The #winner method should accept a board and return the token, "X" or "O"
# that has won the game given a winning board.
def winner(board)
  if won?(board)
    win_combo=won?(board) # 3 indices - all x or all o
    return board[win_combo[0]]  # win_combo[0] has the first index of the winning combo
  else
    return nil
  end
end
