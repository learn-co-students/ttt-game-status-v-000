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


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board) 
  WIN_COMBINATIONS.detect do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
      win_combination
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      win_combination
    else
      false
    end
  end
end


def full?(board)
  board.all? do |board|
    board == "X" || board == "O"
  end
end


def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  if full?(board) == true || won?(board) == true
    return true
  end
end

def winner(board)
  if won?(board) == WIN_COMBINATIONS[0] 
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[1]
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[2]
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[6]
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[3]
    return "O"
  elsif won?(board) == WIN_COMBINATIONS[4]
    return "O"
  elsif won?(board) == WIN_COMBINATIONS[5]
    return "O"
  elsif won?(board) == WIN_COMBINATIONS[7]
    return "O"
  else 
    return nil
  end
end
      
      
      
      
        
      
    









