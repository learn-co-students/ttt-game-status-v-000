# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# board = ["X", nil, "X", " ", "X", " ", "O", "O", " "]
# puts position_taken?(board, 1)
# if index is equals to "nil" or equals to " " then it returns true, but we want
# it to return false. So, if NOT equal to "nil" or NOT equal " " then it returns false

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # center row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # center column
  [2,5,8], # right column
  [0,4,8], # diagonal (top left to bottom right)
  [6,4,2]  # diagonal (bottom left to top right)
]

# board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# board = ["X", " ", "X", " ", "X", " ", "O", "O", " "] # game in progress
# board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"] # draw
# board = ["O", "X", "O", "O", "X", "X", "X", "O", "X"] # draw
# board = ["X", "X", "X", " ", " ", " ", " ", " ", " "] # X wins top row
# board = [" ", " ", " ", "X", "X", "X", " ", " ", " "] # X wins center row
# board = [" ", " ", " ", " ", " ", " ", "X", "X", "X"] # X wins bottom row
 board = ["O", " ", " ", "O", " ", " ", "O", " ", " "] # O wins left column
# board = [" ", "O", " ", " ", "O", " ", " ", "O", " "] # O wins center column
# board = [" ", " ", "O", " ", " ", "O", " ", " ", "O"] # O wins right column
# board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"] # X wins diagonal (top left to bottom right)
# board = [" ", " ", "O", " ", "O", " ", "O", " ", " "] # O wins diagonal (bottom left to top right)

def won?(board)
  WIN_COMBINATIONS.detect do |win_index| # "detect" will only return the first element that makes the block true
# puts win_index[0]  # returns 0,3,6,0,1,2,0,6
#  (all 0 index values in WIN_COMBINATIONS[0][0],[1][0],[2][0],[3][0],[4][0],[5][0],etc.)
# puts win_index[1]  # returns 1,4,7,3,4,5,4,4
#  (all 1 index values in WIN_COMBINATIONS[0][1],[1][1],[2][1],[3][1],[4][1],[5][1],etc.)
# puts win_index[2]  # returns 2,5,8,6,7,8,8,2
#  (all 2 index values in WIN_COMBINATIONS[0][2],[1][2],[2][2],[3][2],[4][2],[5][2],etc.)
# only need three [0,1,2] "win_index[]" because that is the length of child arrays
# now check the board to see if indexes contain "X" or "O"
   board[win_index[0]] == "X" &&
   board[win_index[1]] == "X" &&
   board[win_index[2]] == "X" ||
   board[win_index[0]] == "O" &&
   board[win_index[1]] == "O" &&
   board[win_index[2]] == "O" &&

   position_taken?(board, win_index[0])
# position_taken? checks if win_index[0] is not nil or not equal to " "
  end
end

def full?(board)
  board.all? { |full| full == "X" || full == "O"}
  # Evaluates board indexes to true if "all" are equal to "X" or "O"
end

def draw?(board)
  full?(board) && !won?(board)
  # Returns true if the board is full and not won,
  # or false if the board is not full
end

def over?(board)
  won?(board) || draw?(board)
  # Returns true if board has been won, is a draw, or is full
end

def winner(board)
  winner = won?(board) # assign above Method to a local variable
     if
       winner == nil # if no winner, return "nil"
        nil
     elsif
       board[winner[0]] == "X" # if return values equal to "X", return "X"
        "X"
     else
       board[winner[0]] == "O" # if return values equal to "O", return "O"
        "O"
     end
end

puts winner(board)
