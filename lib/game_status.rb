# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def full?(board)
  board.none?{|move| move == " "}
end

def won?(board)

  for i in 0...WIN_COMBINATIONS.length
    win = WIN_COMBINATIONS[i]

    if win.all?{|idx| board[idx] == "O"}
      return win
    end
    if win.all?{|idx| board[idx] == "X"}
      return win
    end

  end
  return false
end

def draw?(board)
  if won?(board) != false
    return false
  elsif full?(board) && won?(board) == false
    return true
  end
end


def over?(board)
  if won?(board) != false
    return true
  elsif full?(board)
    return true
  elsif draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  moves = won?(board)
  if moves.is_a? Array
    if board[moves[0]] == "O"
      return "O"
    else
      return "X"
    end
  end
  return nil
end
