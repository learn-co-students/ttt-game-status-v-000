require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2], #top rows
  [3, 4, 5], #middle rows
  [6, 7, 8], # bottom rows
  [0, 3, 6], #lvert
  [1, 4, 7], #mvert
  [2, 5, 8], #rvert
  [0, 4, 8], # diag1
  [2, 4, 6] # diag2
]
# Define your WIN_COMBINATIONS constant
def won?(board)
  WIN_COMBINATIONS.each do | winning_combination |
    if board[winning_combination[0]] == "X" &&
       board[winning_combination[1]] == "X" &&
       board[winning_combination[2]] == "X" ||
       board[winning_combination[0]] == "O" &&
       board[winning_combination[1]] == "O" &&
       board[winning_combination[2]] == "O"
    return winning_combination
    end
  end
  false
end

def full?(board)
board.all? do |token|
  token =="X" || token =="O"
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif  !won?(board) && !full?(board)
    false
 else won?(board)
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end

def winner(board)
  if winning_combination = won?(board)  
    board[winning_combination[0]]
    end
  end
