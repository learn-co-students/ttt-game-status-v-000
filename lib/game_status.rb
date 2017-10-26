# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [1,4,7],
  [2,5,8],
  [0,3,6],
  [2,4,6]
]

#return false/nil if there is no win combination present in the board and
#return the winning combination indexes as an array if there is a win.
  def won?(board)
    WIN_COMBINATIONS.find do |wins|
      board[wins[0]] == board[wins[1]] && board[wins[0]] ==
      board[wins[2]] && position_taken?(board, wins[1])
    end
  end
