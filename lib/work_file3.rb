# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # Diagonal
  [2, 4, 6], # Diagonal
]
def won?(board)
  #board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  #empty_board = false
###  [" ", " ", " ", " ", " ", " ", " ", " ", " "].any?{|empty_board| empty_board == "X"}

###else
  #  [0, 1, 2].all? do |top_row_win|
  #    top_row_win = "X"
WIN_COMBINATIONS.detect do |win_combinations|
#####  board[win_combinations[0]] == "X" && board[win_combinations[1]] == "X" && board[win_combinations[2]] == "X" || board[win_combinations[0]] == "O" && board[win_combinations[1]] == "O" && board[win_combinations[2]] == "O"
#position_taken?(board, win_combinations[0]) && position_taken?(board, win_combinations[1]) && position_taken?(board, win_combinations[2])
#####  position_taken?(board, win_combinations[0]) && position_taken?(board, win_combinations[1]) && position_taken?(board, win_combinations[2])

  #win_combinations.each? do |three_in_a_row|
   #board[three_in_a_row[0]] == "X" && board[three_in_a_row[1]] == "X" && board[three_in_a_row[2]] == "X"
   #three_in_a_row == "X" || three_in_a_row == "O"
   position_taken?(board, win_combinations) == "X" || position_taken?(board, win_combinations) == "O"
    end
  end
