# Helper Method
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  won=false
  WIN_COMBINATIONS.each do |set|
    if (board[set[0]]==board[set[1]] && board[set[1]]==board[set[2]] && board[set[0]]!='' && board[set[0]]!=' ' && board[set[0]]!=nil)
      won=set
    end
  end
 return won
end

def full?(board)
  full=true
  board.each do |cell|
    if (cell=='' || cell==' ' || cell==nil)
      full=false
    end
  end
  return full
end

def draw?(board)
  if (full?(board) && !won?(board))
    return true
  else
    return false
  end
end

def over?(board)
  if (draw?(board) || won?(board))
    return true
  else
    return false
  end
end

def empty?(cell)
  if (cell=='' || cell==' ' || cell==nil)
    return true
  else
    return false
  end
end

def winner(board)

  if  won?(board)

      return board[won?(board)[0]]

  else
    return nil
  end
end
# Define your WIN_COMBINATIONS constant
