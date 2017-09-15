require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  ### ways to check if won?(board) is a falsey value ###
  # won?(board) == nil, !won?(board)
 WIN_COMBINATIONS.detect do |win_combo|
  #check a tic tac toe board and return true if there is a win and false if not.
  #return the winning combination indexes as an array if there is a win.
   w1 = win_combo[0]
   w2 = win_combo[1]
   w3 = win_combo[2]
   # win_combo [0,1,2]
   # all tokens in a line have to be the same

   # condition =
   board[w1] == board[w2] && board[w1] == board[w3] && board[w1] != " "

end #end detect
 #return false
end #end def

def full?(board)
  board.all? {| slot | slot == "X" || slot == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  #board.all? {| slot | slot == "X" && slot == "X" && slot == "X"}
  # if won?(board)
  #   index = won?(board)[0]
  #   board[index]
  # end

  win_combo = won?(board)
  if win_combo
    index = win_combo[0]
    board[index]
  end  

  # win_combo = won?(board)
  # board[win_combo[0]] if win_combo
end
