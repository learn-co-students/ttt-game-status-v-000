require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # left column win
  [1,4,7], # mid column win
  [2,5,8], # right col win
  [0,4,8], #  diagonal
  [2,4,6] #  diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |wincombo|
    if (board[wincombo[0]]) == "X" && (board[wincombo[1]]) == "X" && (board[wincombo[2]]) == "X"
      return wincombo
    elsif (board[wincombo[0]]) == "O" && (board[wincombo[1]]) == "O" && (board[wincombo[2]]) == "O"
      return wincombo
    end
  end
  false
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

board = [[0],[1],[2],[3],[4],[5],[6],[7],[8]]
def full?(board)
  board.each do |positions|
    if positions == " " || positions == ""
      return false
    else
      true
  end
end
end

def draw?(board)
  if full?(board) == true || won?(board) == false
    return true
  else
  end
end

def over?(board)
  if won?(board)
    return true
  elsif full?(board)
    return true
  elsif draw?(board)
    return false
  else
  end
end

def winner(board)
  wincombo = won?(board)
  if won?(board)
  return board[wincombo[0]]
  else
  end
end
