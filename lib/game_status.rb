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
  winner = false
  who_won = nil
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      winner = current_combination
      who_won = "X"
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      winner = current_combination
      who_won = "O"
    end
  end
  return winner
end
    
def full?(board)
 board.none?{|blank_space| blank_space == " "} 
end

def draw?(board)
  if full?(board) == true && won?(board) == false
  return true
  else 
    return false
  end
end  
  
def over?(board)
  if full?(board) == true || won?(board) != false
    return true
  else return false
end
end

def winner(board)
winner = false
  who_won = nil
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      winner = current_combination
      who_won = "X"
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      winner = current_combination
      who_won = "O"
    end
  end
  return who_won
end