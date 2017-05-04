# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
board = ["O","X","O","X","O","X","X","O","X"]

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
def won?(board)
  win_combo = [" "," "," "]
  WIN_COMBINATIONS.each do |combo|
    if((board[combo[0]] == "X" &&
      board[combo[1]] == "X" && board[combo[2]] == "X") ||
      (board[combo[0]] == "O" &&
        board[combo[1]] == "O" && board[combo[2]] == "O"))
      win_combo[0] = combo[0]
      win_combo[1] = combo[1]
      win_combo[2] = combo[2]
      return win_combo
    end
  end
  return nil
end

def full?(board)
  board.each do |cell|
    if(cell != "X" && cell != "O")
      return false
    end
  end
  return true
end

def draw?(board)
  if(full?(board))
    if(!won?(board))
      return true
    end
  end
  return false
end

def over?(board)
  if(won?(board) || draw?(board))
    return true
  end
  return false
end

def winner(board)
  win_combo = won?(board)
  if(win_combo != nil)
    return board[win_combo[0]]
  end
  return nil
end
