

WIN_COMBINATIONS = [
  [0,1,2],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [3,4,5],
  [6,7,8]]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end



def won?(board)

WIN_COMBINATIONS.each do |win_combination|

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
 
  position_1 = board[win_index_1] 
  position_2 = board[win_index_2] 
  position_3 = board[win_index_3] 
 
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination 
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  end
end
  else
    false
end



def full?(board)
  if board.include?(' ') || board.include?('')
    return false
else
    return true
  end
end


def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end

def over?(board)
  if full?(board) || draw?(board)
    return true
    elsif won?(board)
      return true
  else  
    return false
  end
end


def winner(board)
  
 winning_combo = won?(board)
 
 if winning_combo 
   return board[winning_combo[0]]
  
    
  end
end



