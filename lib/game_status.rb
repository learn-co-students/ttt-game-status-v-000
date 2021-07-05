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

def won? (board)
  
  WIN_COMBINATIONS.each do |win|
    result = []
    win.each {|el| result << board[el]}
    if (result.all? {|x_pos| x_pos == "X"})
      return win
    elsif(result.all? {|o_pos| o_pos == "O"})
      return win
    end
  end
  return false
end

def full? (board)
 !board.include? (" ")
end

def draw? (board)
  !won?(board) && full?(board)
end

def over? (board)
  won?(board) || draw?(board) || full?(board)
end

def winner (board)
  if(won?(board) != false)
    final = won?(board)
    if(board[final[0]] == "X") 
      return "X"
    elsif(board[final[0]] == "O") 
      return "O"
    end
  else
    return nil
  end
end