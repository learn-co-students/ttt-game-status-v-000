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

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    winX = combo.all? do |index|
      board[index] == 'X'
    end
    winO = combo.all? do |index|
      board[index] == 'O'
    end

    if(winO || winX)
      return combo
    end
  end
  return nil
end

def full?(board)
  board.none? do |space|
    space.nil? || space == " "
  end
end

def draw?(board)
  if(!won?(board) && full?(board))
    return true
  elsif(!won?(board) && !full?(board))
    return false
  elsif(won?(board))
    return false
  end
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end
