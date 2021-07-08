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

#won?
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[1]] == board[win_combination[2]] &&
    position_taken?(board, win_combination[0])
  end
end

#full?
def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

#draw?
def draw?(board)
  #true if the board has not been won and is full
  full?(board) && !won?(board)
  #false if the board is not won and board is not full
  #false if the board is won
end

#over?
def over?(board)
  won?(board) || full?(board)
end

#WINNER
def winner(board)
  if win_combination = won?(board)
  board[win_combination.first]
  end
end
