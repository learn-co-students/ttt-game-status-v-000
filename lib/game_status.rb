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
    [6,4,2]
    ]
def won?(board)
  
empty_check = board.all? { |x|
  x == " " }
draw_check = board.none? { |x|
  x == " " }
win_check = WIN_COMBINATIONS.each { |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
  
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
      
      
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
      
    else
      false
    end
  }
  if empty_check == true
    return false
  elsif draw_check == true && win_check == false
    return false
  else 
    return false
end 
end

def full?(board)
  if board.any? { |x| x == " " } == false
    return true
  end
end


def draw?(board)
numbers = [0,3,4,5,6,8]
if won?(board) != false
  if won?(board).any?{|i| i = numbers} == true
    return false
  end  
else    
  if full?(board) == true
    return true
  elsif full?(board) != true
    return false
  end  
end  
end

def over?(board)
  if draw?(board) == true
    return true
  elsif won?(board) != false
    return true
  else
    false
  end
end

def winner(board)
  if won?(board) != false
    if board[won?(board)[0]] == "X"
      return "X"
    elsif board[won?(board)[0]] == "O"  
      return "O"
    end  
  else
    nil
  end
end  