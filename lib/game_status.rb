# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
    [0,1,2], #Top row
    [3,4,5], #Middle row
    [6,7,8], #Bottom row
    [0,3,6], #1st column
    [1,4,7], #2nd column
    [2,5,8], #3rd column
    [0,4,8], #diagonal lfttp to btmrght
    [6,4,2] #diagonal btmlft to top right
  ]

def won?(board)
  WIN_COMBINATIONS.each.detect do |winarray|
        if board[winarray[0]] == "X" && board[winarray[1]] == "X" && board[winarray[2]] == "X"
          winarray.to_a

        elsif  board[winarray[0]] == "O" && board[winarray[1]] == "O" && board[winarray[2]] == "O"
          winarray.to_a
        else
         false
        end
      end
end

def full?(board)
  won?(board)  || !board.include?(" ")
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board) == nil
    nil
  else
   board[won?(board)[0]]
 end
end
