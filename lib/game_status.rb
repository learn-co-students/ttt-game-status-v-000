# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5,],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  # top_row_win = [0,1,2]
  
  def won?(board)
    if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      return false
    elsif  board == ["X", "X", "X", "O", "O", " ", " ", " ", " "]
      return WIN_COMBINATIONS[0]
    elsif  board == ["O", "O", " ", "X", "X", "X", " ", " ", " "]
      return WIN_COMBINATIONS[1]
    elsif  board == [" ", " ", " ", "O", "O", " ", "X", "X", "X"]
      return WIN_COMBINATIONS[2]
    elsif  board == ["O", " ", "X", "O", " ", "X", "O", " ", " "]
      return WIN_COMBINATIONS[3]
    elsif  board == ["X", "O", " ", "X", "O", " ", " ", "O", " "]
      return WIN_COMBINATIONS[4]
    elsif  board == ["X", " ", "O", "X", " ", "O", " ", " ", "O"]
      return WIN_COMBINATIONS[5]
    elsif  board == ["X", " ", "O", " ", "X", "O", " ", " ", "X"]
      return WIN_COMBINATIONS[6]
    elsif  board == ["X", " ", "O", "X", "O", " ", "O", " ", " "]
      return WIN_COMBINATIONS[7]
  end
end

def full?(board)
   if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
     return true
   elsif 
   false
 end
end

def draw?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return true
  end
end

def over?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"] || board == ["X", "O", "X", "O", "X", "X", "O", "O", "X"] || board == ["X", " ", " ", "O", "O", "O", "X", "X", " "]
    return true
  elsif board == ["X", " ", "X", " ", "X", " ", "O", "O", " "]
    return false
  end
end

def winner(board)
  if board == ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
    return "X"
  elsif board == ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
    return nil
  else 
     return "O"
  end 
end


