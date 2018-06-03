# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [2,4,6],  # Diagonal 
  [0,4,8],  # Diagonal
]

def won?(board)
    WIN_COMBINATIONS.each do |combo|
      if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      return combo
      elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      return combo
      end
    end
      false
end  

   
def full?(board)
 if board.include?(" ")
  false
  else 
   true
  end
end  

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
   false
  end
end

def over?(board)
  if full?(board) == true
    true
    elsif won?(board) != false
    true
  else
    false
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |combo|
      if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      return "X"
      elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      return "O"
      end
    end
    return nil
end  
