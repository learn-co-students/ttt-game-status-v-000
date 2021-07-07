# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS= [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #1st col
  [1,4,7], #2nd col
  [2,5,8], #3rd col
  [0,4,8], #left diagonals
  [2,4,6], #right diagonals
]

def won?(board)
    WIN_COMBINATIONS.detect do |combination|
      board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] && position_taken?(board,combination[0])
      #this iterates over WIN_COMBINATIONS comparing the 2nd level array postitions of [0,1,2] to see if they all have x's or o's (this returns an array not true or false?
  end   #end for win combination
end #end for method

def full?(board)
  # this asks if there are any spaces on the board and returns true if full and false if there are spaces
  board.none? {|space| space == " "}
end

def draw?(board)
    #  returns true if the board has not been won and is full
  if !won?(board) && full?(board)
    return true
    # and false if the board is not won and the board is not full, and false if the board is won.
  else
    return false
  end
end


def over?(board)
  #returns true if the board has been won, is a draw, or is full.
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  #return the token, "X" or "O" that has won the game given a winning board,returns nil when no winner.
  combination = won?(board)
  if combination == nil
    return nil
  else
  return board[combination [0]]
end
end
