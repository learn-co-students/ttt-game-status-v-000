# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle 
  [2,5,8], #Right
  [0,4,8], #L to r diagonol 
  [2,4,6], #R to l diagonol
  # ETC, an array for each win combination
]

def won?(board)
  if board == [" "," "," "," "," "," "," "," "," "]
    return false
  else
    WIN_COMBINATIONS.each do |win_combo|
      win_dex_1 = win_combo[0]
      win_dex_2 = win_combo[1]
      win_dex_3 = win_combo[2]
      position_1 = board[win_dex_1]  
      position_2 = board[win_dex_2]
      position_3 = board[win_dex_3]
      
        if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O") 
          return win_combo
        end #end of if
    end #end of do
  if full?(board)
    return false
  end # end of if full
  end # end of if/else
end # end of method 


def full?(board) 
  board.all? do |index|
    index == "X" || index =="O"
  end 
end


def draw?(board)
  if full?(board) && !won?(board)
    return true 
  else  
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
  else 
    nil
  end
end
  

