#won Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  
  [0,3,6],
  [1,4,7],
  [2,5,8],
  
  [0,4,8],
  [2,4,6]
  ]
  
  #won?
  def won?(board)
  
    WIN_COMBINATIONS.each do |win| 
      win_index_1 = win[0]
      win_index_2 = win[1]
      win_index_3 = win[2]
      
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
    
      
      
    if position_1  ==  position_2 && position_2 == position_3 && position_taken?(board, win_index_2) 
    
    return win
    else
    end
  end
  return false
end

#full?
def full?(board)
  board.each do |move|
    
if  move == "X" || move == "O"
  next
else  
move = " "|| move = nil
return false
    end
 end
end

#draw?
def draw?(board)
  if !won?(board) && full?(board)
    then true
  else 
    false
  end
end

#over?
def over?(board)
  if draw?(board) || full?(board) || won?(board)
  true
  else
    return false
  end
end

#winner
def winner(board)
  x = board.count("X")
  o = board.count("O")
  if over?(board) && won?(board) && x > o
 "X"
  elsif over?(board) && won?(board) && o > x
  "O"
  else
    nil
  end
end