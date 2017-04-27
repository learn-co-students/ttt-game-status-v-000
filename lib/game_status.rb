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
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if combo.all?  { |position| board[position] == "X" } ||
     combo.all? { |position| board[position] == "O" }
     return combo
   end
 end
 return false
end

def full?(board)
  board.each do |position|
    if (position == ' ' || position == '')
      return false
      break
    end
  end
  return true
end

def draw?(board)
  winningSeries = won?(board)
  if( winningSeries == false)
    return true  #it is not a draw, someone has won.
  elsif ( winningSeries.length == 3)
    return false
  end
  if(full?(board))
    return true
  else
    return false
  end
end

def winner(board)
  winningSeries = won?(board)
  if ( winningSeries == false )
    return nil
  elsif ( winningSeries.length == 3 )
    return board[winningSeries[0]]
  end
end

def over?(board)
  if (won?(board).is_a? Array)
    return true
  end
  if(full?(board))
    if(draw?(board))
      return true
    end
  elsif (won?(board) == false)
    return false
  else
    return true
  end
end
