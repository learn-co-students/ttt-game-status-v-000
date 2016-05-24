# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.any? do |combo|
    position0 = board[combo[0]]
    position1 = board[combo[1]]
    position2 = board[combo[2]]
      if (position0 == "X" && position1 == "X" && position2 == "X") || (position0 == "O" && position1 == "O" && position2 == "O") 
        return combo
      else
        false
      end

  end
end

def full?(board)
  board.all? do |position|
    if position == "X" || position == "O"
      true
    else
      false
    end   
  end   
end  

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false  
  end
end  

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end  

def winner(board)
  if !won?(board)
    return nil
  end  
  board[won?(board)[0]]


end  