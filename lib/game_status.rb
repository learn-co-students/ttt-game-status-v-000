# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
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
  
  WIN_COMBINATIONS.each do |win_combo|
    
    all_x = win_combo.all? do |win_index|
      
      board[win_index] == "X"
      
    end
    
    all_y = win_combo.all? do |win_index|
      
      board[win_index] == "O"
      
    end
    
    if all_x || all_y
      
      return win_combo
      
    end
    
  end
  
  return false
  
end

def full?(board)
  
  if board.any?{|i| i == " "}
    return false
  end
  
  return true
  
end

def winner(board)
  
  winner = won?(board)
  if winner.class == Array
    return board[winner[0]]
  end
  
  return nil

end

def draw?(board)
  
  if !won?(board) && full?(board)
    return true
  end
  return false
  
end

def over?(board)
  
  if draw?(board) || won?(board)
    return true
  end
  
    return false
    
end