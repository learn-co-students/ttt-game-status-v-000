# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
      board[win_combination[0]] == board[win_combination[1]] &&
      board[win_combination[1]] == board[win_combination[2]] &&
      position_taken?(board, win_combination[0])
  end
end

#returns true or false based on whether that position on the board has been filled.
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def full?(board)
  #if the board does not have an empty position return true
  board.all? do |taken|
    taken != " "
  end
end

def draw?(board)
  #returns true if not won & full
  #false if not won & full; false if won
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  winning_player = won?(board)
  if won?(board)
    return board[winning_player[0]]
  end
end
