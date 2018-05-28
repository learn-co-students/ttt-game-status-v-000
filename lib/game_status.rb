# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[0,3,6],[1,4,7],[2,5,8]]

def won?(board)
WIN_COMBINATIONS.each do |array|
    if array.all? { |value| board[value] =="X" } || array.all? { |value| board[value] =="O" }
      return array
    end
  end
  return false
end

def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) 
end

  def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  else
  end
end
