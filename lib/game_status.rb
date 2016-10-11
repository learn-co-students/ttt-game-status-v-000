# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
#9 positions index 0-8
#represent coordinates of a win by referring to their index in the board
#win in the top horizontal row has indexes of [0, 1, 2]
#8 possible ways to win : 3 horizontal rows, 3 vertical, 2 diagonals

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],#horizontal
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],#vertical
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],#diagonal
  [2, 4, 6],
]
def won?(board)

  WIN_COMBINATIONS.detect do |combination|
    board[combination[0]] == board[combination[1]] &&
    board[combination[1]] == board[combination[2]] &&
    position_taken?(board, combination[0])

  end
end

def full?(board)
  #returns true if every board tile is full
  board.all? {|tile| tile == "X" || tile == "O" }
end

def draw?(board)
  #returns true if board is full but no one has won
  #returns false if board is nto won and is not full
  #returns false if board is won
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  #returns true if board is won, is a draw, or is full
  if draw?(board) || full?(board) || won?(board)
    true
  else
    false
  end
end

def winner(board)
WIN_COMBINATIONS.each do |combination|
  if board[combination[0]] == "X" && board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]
    return "X"
  end
  if board[combination[0]] == "O" && board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]
    return "O"
  end
end
  nil
end
