# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[0,3,6],[0,4,8],[1,4,7],[2,5,8],[2,4,6],[3,4,5],[6,7,8]]

def won?(board)
  WIN_COMBINATIONS.detect do|win|
    if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X"
      true
    elsif board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] == "O"
      true
      return win
    end
  end
end

def full?(board)
  board.all? do |space|
    if space == "X" || space == "O"
      true
    end
  end
end

def draw?(board)
  if !!full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if !!draw?(board) || !!won?(board) || !!full?(board)
    true
  end
end

def winner(board)
  board[won?(board)[0]] if won?(board)
end
