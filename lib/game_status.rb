# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
def won?(board)
WIN_COMBINATIONS.detect {|win_combination|
  (board[win_combination[0]]=="X" &&
  board[win_combination[1]]=="X" &&
  board[win_combination[2]]=="X") ||
  (board[win_combination[0]]=="O" &&
  board[win_combination[1]]=="O" &&
  board[win_combination[2]]=="O")
  }

end
def full?(board)
  if board.none? {|i| i==" " || i==""|| i==nil}
    true
  end
end
def draw?(board)
  if full?(board) && ! won?(board)
    true
  end
end
def over?(board)
  if draw?(board) || won?(board)
    true
  end
end
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  elsif over?(board)
      return nil
  end
end
