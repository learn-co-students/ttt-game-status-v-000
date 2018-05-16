require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left row top to bottom
  [1,4,7], #Center row top to bottom
  [2,5,8], #Right row top to bottom
  [0,4,8], #Top left to bottom right
  [2,4,6], #Top right to bottom left
]

#pseudocode win_combination is a 3 element array of indexes that compose a win, [0,1,2] 
#grab each index from the win_combination that composes a win.
  #win_index_1 = win_combination [0] and so on and so forth

#if position_1 == (is equal) "X" && (and that equals) position_2 == "X" && position_3 == "X"
#retun win_compbination # return the win_combination indexes that won.
    #else
    #false
    #end
  #end  
    
def won?(board)
 
  
  # WIN_COMBINATIONS.each do |win_combo|
  
  #   win_index_1 = win_combo[0]
  #   win_index_2 = win_combo[1]
  #   win_index_3 = win_combo[2]
  
  #   position_1 = board[win_index_1]
  #   position_2 = board[win_index_2]
  #   position_3 = board[win_index_3]
  
  #   if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #     return win_combo
  #   elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
  #     return win_combo
  #   end
  # end
  # nil
  
  
  WIN_COMBINATIONS.find do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]
  
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
  
    position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_3)
  
  end
end
    
def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else !won?(board) && !full?(board) || !won?(board)
    return false
  end
end

def over?(board)
  if won?(board)
    true
  elsif draw?(board)
    true
  elsif full?(board)
    true
  else
    false
  end
end

def winner(board)
  if winning_index = won?(board)
    board[winning_index[0]]
  else
    nil
  end
end  



