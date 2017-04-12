# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

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

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end
#Build a method #over? that accepts a board and returns true if the board has been won, is a draw, or is full.

def over?(board)
  if won?(board) || draw?(board)
    true
  end
end

#The #winner method should accept a board and return the token, "X" or "O" that has won the game given a winning board.

def winner(board)
  result = won?(board)
  if result
    board[result[0]]
  end
end
