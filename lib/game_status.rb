# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [2,5,8],
  [1,4,7]
  ]
  

def won?(board)
  WIN_COMBINATIONS.any? do |win_array|
    win_index_1 = win_array[0]
    win_index_2 = win_array[1]
    win_index_3 = win_array[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == "X" && position_2 =="X" && position_3 == "X"
      return win_array
    elsif position_1 == "O" && position_2 =="O" && position_3 == "O"
     return win_array
   else false 
    end
  end
  end    
  
  
def full?(board)
board.all? do |full_board|
full_board == "X" || full_board == "O"
end
end

def draw?(board)
  if full?(board) && !won?(board)
  return true 
else false
end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  else false
 end 
end
  
def winner(board)
  WIN_COMBINATIONS.find do |game_winner_array|
  win = board[game_winner_array[0]]
    if won?(board) == game_winner_array && win == "X"
      return "X"
    elsif won?(board) == game_winner_array && win == "O"
      return "O"
   end
 end
end

