# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2], #Top row
    [3,4,5], #Middle row
    [6,7,8], #Bottom row
    [0,4,8], #Diagonal top left to bottom right
    [2,4,6], #Diagonal top right to bottom left
    [0,3,6], #Top left to bottom left vertical    
    [2,5,8], #Top right to bottom right vertical
    [1,4,7] #Top middle to bottom middle vertical    
    ]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    index_1 = win_combination[0]
    index_2 = win_combination[1]
    index_3 = win_combination[2]
    
    position_1 = board[index_1]
    position_2 = board[index_2]
    position_3 = board[index_3]
    
    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      win_combination
    else
      false
  end
 end
end

def full?(board)
 board.all? do |value| 
   value == "X" || value == "O"
 end
end

def draw?(board)
  if !(won?(board)) && full?(board)
    true
  elsif !(won?(board)) && !(full?(board))
    false 
  else won?(board) == true
    false
 end
end

def over?(board)
  if won?(board)
    true
  else board.all? do |value|
    !(value == "nil" || value == " " || value == "")
  end
 end
end

def winner(board)
  if over?(board) && board[won?(board)[0]] == "X" 
   "X"
  elsif over?(board) && board[won?(board)[0]] == "O"
   "O"
  else 
   nil
 end
end
