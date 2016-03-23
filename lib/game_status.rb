# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6] ]

def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  end
  WIN_COMBINATIONS.each do |combo|
      if ((board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ) || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" ))
       return combo
     end
  end
  WIN_COMBINATIONS.each do |combo|
      if !((board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ) || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" ))
       return false
     end
  end
end

def full?(board)
  board.each do |spot|
    if spot == " "
      return false
    end
  end
  board.each do |spot|
    if spot != " "
      return true
    end
  end
end

def draw?(board)

   WIN_COMBINATIONS.each do |combo|
      if ((board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ) || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" ))
       return false
     end
   end

  board.each do |spot|
    if spot != " "
      return true
    end
  end

  board.each do |spot|
    if spot == " "
      return false
    end
  end
end

def over?(board)

  WIN_COMBINATIONS.each do |combo|
      if ((board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ) || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" ))
       return true
     end
   end

   board.each do |spot|
    if spot == " "
      return false
    end
  end
end

def winner(board)

  WIN_COMBINATIONS.each do |combo|
      if ((board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ))
       return "X"
     end
   end

   WIN_COMBINATIONS.each do |combo|
      if ((board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" ))
       return "O"
     end
   end
  
   WIN_COMBINATIONS.each do |combo|
      if !((board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ) || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" ))
       return nil
     end
   end

end