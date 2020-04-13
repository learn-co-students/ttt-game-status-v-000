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
  #first test if there WAS a winner yet, 
  #& if so, find out which player token (X or O)
  #otherwise if  no winner, return nil. 
  if won?(board)
    #if no winner, then IF is falsey, so winner() returns nil. 
    #board[won?(board)[0]] ONLY happens if there WAS a winner. 
    board[won?(board)[0]]
  end
  
end

