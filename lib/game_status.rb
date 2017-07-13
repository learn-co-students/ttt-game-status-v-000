# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6], # Right column
    [1,4,7], # Middle column
    [2,5,8], # Left column
    [0,4,8], # Left diagonal
    [2,4,6]  # Right diagonal
    # ETC, an array for each win combination
  ]

# Define won?(board) method
def won?(board)
  #binding.pry
  WIN_COMBINATIONS.detect do |win_index|
    binding.pry
    board[win_index[0]] == board[win_index[1]] && board[win_index[1]] == board[win_index[2]] && position_taken?(board, win_index[0])
  end
end

# Define full?(board) method
def full?(board)
  board.none? {|t| t == " "}
#returns true for a draw
#returns false for an in-progress game
end

# Define draw?(board) method
def draw?(board)
full?(board) && !won?(board)
#board.none? {|t| t == " "}
  #WIN_COMBINATIONS.detect do |win_index|
  #position_taken?(board, win_index)
  #returns true for a draw (FAILED - 11)
  #returns false for a game won in the first row
  #returns false for a won game diagonaly
  #returns false for an in-progress game
end

# Define over?(board) method
def over?(board)
  board.none? {|t| t == " "}
  #returns true for a draw (FAILED - 12)
  #returns true for a won game (FAILED - 13)
  #returns false for an in-progress game
end

# Define winner?(board) method
def winner(board)
  if winning_combo = won?(board)
     board[winning_combo.first]
    end
  end
#    board[win_index] == "X"
#  puts "X"
#  end
  #return X when X won (FAILED - 14)
  #returns O when O won (FAILED - 15)
  #returns nil when no winner (FAILED - 16)
#end

#top_row_win = WIN_COMBINATIONS[0]

#if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
#puts "#{top_row_win}"
  #if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #return WIN_COMBINATIONS # return the win_combination indexes that won.

#win_index_1 = WIN_COMBINATIONS[0]
#win_index_2 = WIN_COMBINATIONS[1]
#win_index_3 = WIN_COMBINATIONS[2]
#win_index_4 = WIN_COMBINATIONS[3]
#win_index_5 = WIN_COMBINATIONS[4]
#win_index_6 = WIN_COMBINATIONS[5]
#win_index_7 = WIN_COMBINATIONS[6]
#win_index_8 = WIN_COMBINATIONS[7]

#position_1 = board[0], board[1], board[2]
#position_1 = board[win_index_1] # load the value of the board at win_index_1
#position_2 = board[win_index_2] # load the value of the board at win_index_2
#position_3 = board[win_index_3] # load the value of the board at win_index_3
#position_4 = board[win_index_4] # load the value of the board at win_index_4
#position_5 = board[win_index_5] # load the value of the board at win_index_5
#position_6 = board[win_index_6] # load the value of the board at win_index_6
#position_7 = board[win_index_7] # load the value of the board at win_index_7
#position_8 = board[win_index_8] # load the value of the board at win_index_8


#WIN_COMBINATIONS.each do |win_index|
  #win_index_1 = win_combination[0]
  #win_index_2 = win_combination[1]
  #win_index_3 = win_combination[2]
  #win_index_4 = win_combination[3]
  #win_index_5 = win_combination[4]
  #win_index_6 = win_combination[5]
  #win_index_7 = win_combination[6]
  #win_index_8 = win_combination[7]
  #puts "Winning Index is #{win_index}"
#end
