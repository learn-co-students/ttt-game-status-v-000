require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Right row
  [1,4,7], # Left row
  [2,5,8], # Left row
  [0,4,8], # Right diagonal
  [2,4,6] # Left diagonal
]

# X | X | X
# board = ["X","O","X","O","O","X","O","X","O"]
# board = ["O","X","O"," "," "," "," "," "," "]
# board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
# board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board1 = win_combination[0]
    board2 = win_combination[1]
    board3 = win_combination[2]

   board[board1] == board[board2] && board[board2] == board[board3] && board[board2] != " "
  end
end

def full?(board)
  if board.include?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == nil
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

# def winner?(board)
#   p won?(board)
#   if won?(board).include?("X")
#     puts "X"
#   elsif won?(board).include?("O")
#     "O"
#   end
# end

def winner(board)
  # index = won?(board).pop
  if won?(board) == nil
    nil
  elsif board[won?(board)[0]] == "X"
    "X"
  elsif board[won?(board)[0]] == "O"
    "O"
  end
end

# won?(board)
# puts full?(board)
# puts draw?(board)
puts winner(board)
