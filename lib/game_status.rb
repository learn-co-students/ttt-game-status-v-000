# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS= [
  [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
]
def won?(board)

    if WIN_COMBINATIONS.each do |win|
          if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X"
            return win
          elsif board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] == "O"
            return win
          end
      end
    else
      false
    end
  end

def full?(board)
  board.all? do |brd|
  if   brd == "X" || brd == "O"
      true
  else
  false
  end
end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  else
    false
  end

end

def winner(board)
  win = won?(board)
  if win == nil
    nil
  elsif board[win[0]] == "X"
     "X"
  elsif board[win[0]] == "O"
    "O"

  end

end
