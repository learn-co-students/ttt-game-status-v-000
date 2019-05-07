require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

#HAS ANYONE WON? The first return of 3 tokens in a row (in any direction) will determine someone has won. Detect will iterate until it finds one.
#We call upon position_taken? to determine if a match is one of empty or occupied matches.
#return false if no. return win_combo if yes
def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]]== board[win_combo[2]] && position_taken?(board, win_combo[0])
       true
    else
       false
    end
  end
end

#If there are no available spots on board cause board is full, return true, else return false
def full?(board)
  board.all? do |square|
    square == "X" || square == "O"
 end
end

#a draw means that board is full and no one has won. Use #full? and #won? in this method to check
def draw?(board)
    full?(board) && !won?(board)
end

def over?(board)
  won?(board) ||  draw?(board)
end

#Return the token, "X" or "O" that has won the game.
def winner(board)
  won?(board) && board[won?(board)[0]]
end
