# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[2,4,6],[0,4,8]
  ]
def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
      return win_combo
    elsif (board[win_combo[0]]) == "O" && (board[win_combo[1]]) == "O" && (board[win_combo[2]]) == "O"
      return win_combo
    end
      false
  end
end

def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  !(won?(board)) && (full?(board))
end
def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  else
    return false
  end 
end  
def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  else
    return nil
  end
end