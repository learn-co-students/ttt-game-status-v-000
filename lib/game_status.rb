# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0, 1, 2], #Horizontal, Top Row
[3, 4, 5], #Horizontal, Middle Row
[6, 7, 8], #Horizontal, Bottom Row
[0, 3, 6], #Vertical, top left, to bottom left
[1, 4, 7], #Vertical, top middle, to bottom middle
[2, 5, 8], #Vertical, top right, to bottom right
[0, 4, 8], #Diagnal, top left, to bottom right
[2, 4, 6], #Diagnal, top right, to bottom left
]


#-- Helper Methods Below --

def won?(board) #--> want to use a method that returns true or false. .each does not do this. 
  WIN_COMBINATIONS.detect do |combo|
  board[combo[0]] == board[combo[1]] &&
  board[combo[0]] == board[combo[2]] &&
  board[combo[1]] == board[combo[2]]
position_taken?(board, index)

  end
false
end

def full? 
end

def draw?
end

def over?
end

def winner
end

