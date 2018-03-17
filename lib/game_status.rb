# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


 WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5], #middle row win
  [6,7,8], #bottom row win
  [0,3,6], #left column win
  [1,4,7], #middle column win
  [2,5,8], #right column win
  [0,4,8], #diagonal \ win
  [2,4,6] #diagonal / win
]


def won?(board)
  (WIN_COMBINATIONS).any? do |win_combination|
  if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" ||
      board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
  return win_combination
  else
  false
end
end
end


def full?(board)
  board.all? do |index|
   index == "X" || index == "O"

end
end


  def draw?(board)
 full?(board) && !won?(board)
end


def over?(board)
  won?(board) || draw?(board)
  full?(board)
end



def winner(board)
if win_combination = won?(board)
  return board[win_combination.first]

end
end
