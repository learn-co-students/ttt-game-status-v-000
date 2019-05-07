# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
  [ 
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
  WIN_COMBINATIONS.each do |line|
  if (board[line[0]]) == "X" && (board[line[1]]) == "X" && (board[line[2]]) == "X"
    return line
    elsif (board[line[0]]) == "O" && (board[line[1]]) == "O" && (board[line[2]]) == "O"
    return line
 end
end
false
end

def full?(board)
  board.all? {|input| input == "X" || input == "O"}
  end
  
def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
  
  
  
  
  
  
  
  
  
 
  