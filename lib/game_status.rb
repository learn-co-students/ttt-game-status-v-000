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
  WIN_COMBINATIONS.detect do |combo| #. Combo is a placeholder iterating through a 3 element array, each of which compose a win
    #take each index, from  placeholder (combo) that composes a win (all of them!)
  board[combo[0]] == board[combo[1]]&&
  board[combo[1]] == board[combo[2]]&&
  position_taken?(board, combo[2]) #combo is an array that contains 3 positions
  end
end

def full?(board) 
  board.each do |spot|
    if spot == " "
      return false
    else true
    end
  end
end


def draw?(board)
  !won?(board) && full?(board)
#literally if the board is full, and not won.
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
 if new_variable = won?(board)
  if board[new_variable[2]].include?("X")
    return "X"
  else new_variable.include?("O")
    return "O"
   end
  return new_variable
  #returns [0, 4, 8]
  end
end

#capture the array in a variable
# check if new_variable returns anything... becuase if the game isn't won, you don't want to provide a winner


# [0,1,2]
  #     board = ["X", " ", " ", 
  # =>           " ", "X", " ", 
  # =>            " ", " ", "X"]

 #take combo
 #step through combo, 1 by 1
 #if combo contains X, X is the winner
 #if combo contains O, O is the winner
 #if combo contains x and o, return nil
 # if combo contains nil, return nil

