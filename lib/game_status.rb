board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def empty?(board)
  if position_taken?(board, index) == true 
    return false 
  else
    return true 
  end
end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
     board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && 
     board[combo[0]] != nil && board[combo[0]] != " " && board[combo[1]] != nil && board[combo[1]] != " " && board[combo[2]] != nil && board[combo[2]] != " "
  end
end 

def full?(board)
  board.none? do |i|
    i == " " || i == nil
  end
end


def draw?(board)
  won?(board) == nil && full?(board) == true
end

def over?(board)
 won?(board) != nil || draw?(board) == true
end 

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]

end
end

  
