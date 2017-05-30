require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |winning_index|
    # check if there is a token at this position, and then check
    # if every other position is the same 
    if position_taken?(board, winning_index[0]) && board[winning_index[0]] == board[winning_index[1]] && board[winning_index [1]] == board[winning_index[2]]
      return winning_index
    end
  end
  return false
end

def full?(board)
board.all? do |mark|

if mark == "X" || mark == "O"
  true
end
end
end

def draw?(board)
if full?(board) && !won?(board)

  true
end
end
def over?(board)
  if draw?(board) || won?(board)
    true
end
end
def winner(board)

  if won?(board)
    return board[won?(board)[0]]
  end
end
