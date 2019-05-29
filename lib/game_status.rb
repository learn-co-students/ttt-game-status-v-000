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
  WIN_COMBINATIONS.find do |wc|
    if board[wc[0]] == "X" && 
       board[wc[1]] == "X" && 
       board[wc[2]] == "X"
       return wc
    elsif board[wc[0]] == "O" && 
          board[wc[1]] == "O" && 
          board[wc[2]] == "O"
        return wc
      else 
      false 
    end
  end
end

def full?(board)
  !board.include?(" ")
end 

def draw?(board)
  if !won?(board) and full?(board)
    true
    elsif !won?(board) and !full?(board)
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
if won?(board)
  return board[won?(board)[0]]
else 
  nil  
end 
end