# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#defining winning combinations
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [2,4,6]
]

#for each win_combination in WIN_COMBINATIONS
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
#  win_index_1 = win_combination[0]
#  win_index_2 = win_combination[1]
#  win_index_3 = win_combination[2]

#  position_1 = board[win_index_1] # load the value of the board at win_index_1
#  position_2 = board[win_index_2] # load the value of the board at win_index_2
#  position_3 = board[win_index_3] # load the value of the board at win_index_3

#  if position_1 == "X" && position_2 == "X" && position_3 == "X"
#    return win_combination # return the win_combination indexes that won.
#  else
#    false
#  end
#end
#defining a check if a player has won
def won?(board)
#Pass each array entry into a block (index), and find return of true
  WIN_COMBINATIONS.detect do |index|
  #search the board at index 0 and compare to board index 1 to see if true
    board[index[0]] == board[index[1]] &&
  #search the board at index 1 and compare to board index 2 to see if true
    board[index[1]] == board[index[2]] &&
  #run position_taken? method to see if true at index 0 of board
    position_taken?(board, index[0])
  end
end

#define full? to check if board is full
def full?(board)
#Return true if all positions on board are filled by X and/or O
  board.all?{|token| token == "X" || token == "O"}
end

#define draw? to see if there is a draw
def draw?(board)
#draw? == true if full? method is true and won? method is false
  full?(board) && !won?(board)
end

#define over? to see if game is over
def over?(board)
#over? == true if won? is true OR full is true. There is no need to
#check for draw?, as a draw will happen if board is full.
  won?(board) || full?(board)
end

#define winner
def winner(board)
#Check if won? is true, and define to variable
  if winning_move = won?(board)
#return board with the first return of the won? method on the current board
    board[winning_move.first]
  end
end
