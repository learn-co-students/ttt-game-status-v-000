# Helper Method
require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
WIN_COMBINATIONS = [[0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]


def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    #combo = [0, 1, 2] board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    #combo = [2, 4, 6]
    if (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X") || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
      return combo
    end
  end
  return false
end

def full?(board)
  board.all? do |i|
    i == "X" || i == "O"
  end
end

def draw?(board)
  if !!won?(board) == false && full?(board) == true
      true
  elsif won?(board) == nil && !full?(board) == true
    false
  elsif won?(board) == true
    false
  end
end

def over?(board)
  # binding.pry
  if won?(board).class == Array
    return true
  elsif draw?(board) == true
    return true
  else
    false
  end
end

def winner(board)
  # binding.pry
  if won?(board).class == Array
    return board[won?(board)[0]]
  end
end
