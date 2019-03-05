require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]
  
  def won?(board)
    WIN_COMBINATIONS.detect do |winning_combo|
      #winning_combo could be [0, 1, 2], [3, 4, 5]...
      (board[winning_combo[0]] == board[winning_combo[1]]) && 
        (board[winning_combo[1]] == board[winning_combo[2]]) && (board[winning_combo[0]] != " ")
    end
  end
  
  def full?(board)
    board.all? do |position|
      position == "X" || position == "O"
    end
 end

def draw?(board)
  #if board is full and there are no winning combos return TRUE
  full?(board) && !won?(board)
end
  
def over?(board)
 full?(board) || won?(board)
end

def winner(board)
    #look in won? & return what is in any position of board[winning_combo[0]
    #Save the winning combo (a 3 element array) in a variable. 
    winning_combo  =  won?(board) ##will be a 3 position array like [0, 1, 2]
  
    # What I really need a the value of one (any) of those elements of winning_combo:
    #I randomly chose to use winning_combo[0]
    winner = board[winning_combo[0]]
  
    if over?(board) && winner == "X"
      "X"
    elsif over?(board) && winner == "O"
      "O"
    else
      nil
    end
end