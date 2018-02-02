# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8], # cross row
  [2,4,6]  # cross row
]

def won?(board)
  WIN_COMBINATIONS.each do |combwin|
     if board[combwin[0]] == "X" && board[combwin[1]] == "X" && board[combwin[2]]  == "X"
       return combwin
     end

     if board[combwin[0]] == "O" && board[combwin[1]] == "O" && board[combwin[2]]  == "O"
       return combwin
     end
  end
  return false
end

def full?(board)
  total = board.all? do |value|
    value == "X" || value == "O"
  end
  return total
end

def draw?(board)
    if full?(board) == true && won?(board) == false
      return true
    elsif full?(board) == false && won?(board) == false
      return false
    elsif won?(board) == true
      return false
    else
      return false
    end
end

def over?(board)
  # if won?(board) == false && full?(board) == true
  #   return true
  # elsif  draw?(board) == true
  #   return true
  # elsif won?(board) == true && full?(board) == false
  #   return true
  # end
  # return false
  if won?(board)
    return true
  elsif  draw?(board) == true
   return true
 else
    return false
 end
end

def winner(board)
  if won?(board) != false
  matrix = won?(board)

 return board[matrix[0]]
 end

end
