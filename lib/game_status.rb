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
    [6,4,2]
 ]

 def won?(board)
 WIN_COMBINATIONS.find do |combo|
      board[combo[0]] == board[combo[1]] &&
      board[combo[1]] == board[combo[2]] &&
      position_taken?(board, combo[0])
    end
  end

  def full?(board)
   board.all?{|token| token == "X" || token == "O"}
  end

  def draw?(board)
  #!won?(board) && board.all?{|token| token == "X" || token == "O"}
  full?(board) && !won?(board)
  end

  def over?(board)#return true for a draw and for a won game / return false for an in-progress game
  #draw?(board) || won?(board) && board.all?{|token| token == "X" || token == "O"}
  won?(board) || full?(board)
end

def winner(board)
  winning_combo="X" || "0"
  if winning_combo = won?(board)
  board[winning_combo.first]
 end
 end
