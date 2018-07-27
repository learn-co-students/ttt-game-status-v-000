# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top
  [3, 4, 5], #middle
  [6, 7, 8], #bottom
  [0, 3, 6], #|
  [1, 4, 7], # |
  [2, 5, 8], #  |
  [0, 4, 8], #\
  [2, 4, 6] #/
]
#won?
def won?(board)
  WIN_COMBINATIONS.find do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && board[combo[2]] != " "
  end
end
#full?
def full?(board)
  board.none? { |index| index == " " } && !won?(board)
end
#draw?
def draw?(board)
  !won?(board) && full?(board)
end
#over?
def over?(board)
  won?(board) || full?(board) || draw?(board)
end
#winner
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    return nil
  end
end
