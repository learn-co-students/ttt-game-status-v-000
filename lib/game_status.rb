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
  [6,4,2]          ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |win_combination| #win_combination is the element of what we are iterating through
    win_index_1 = win_combination[0] #win_index_1 is 0 on line 8
    win_index_2 = win_combination[1] #win_index_2 is 1 on line 8
    win_index_3 = win_combination[2] #win_index_3 is 2 on line 8
    
    
    #we don't go all the way to win_index_8, for example, because we are only interating 3 elements, which is what each sub-array has in the  WIN_COMBINATIONS constant
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    # the same with position- we don't go all the way to position_8, for example, because we are only examining 3 positions that would give a winning combination.
    
    if position_1 =="X" && position_2 =="X" && position_3 =="X"
      return win_combination
    elsif position_1 =="O" && position_2 =="O" && position_3 =="O"
      return win_combination
    else #a board with no win 
       false
    end
  end
  false
end

def full?(board)
  if board.detect {|i| i == " " || i == nil}
    false
  else
    true
  end
end
    
def draw?(board)
  if !won(board) || !full?(board)
    return true
  else false 
    
    
  