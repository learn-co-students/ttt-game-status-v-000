# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end



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



def full?(board)
  return ! (board.any?{|cell| cell == " " })
end



def won?(board)
  WIN_COMBINATIONS.each do |combo|
    rw = board[combo[0]],board[combo[1]],board[combo[2]]
    if rw.all?{|cell| cell == "X"}
      return combo
    elsif rw.all?{|cell| cell == "O"}
      return combo
    end
  end
  return false
end



def draw?(board)

  if (won?(board) == false && full?(board) == true)
    return true
  else
    return false
  end
end



def over?(board)
  
  if won?(board)
    return true
  elsif  full?(board)
    return true
  elsif  draw?(board)
    return true
  end
  return false
end


def winner(board)
  
  if won?(board)
    xs = board.count("X")
    os = board.count("O")
    if xs > os
      return "X"
    else
      return "O"
    end
  end
  return nil
end





