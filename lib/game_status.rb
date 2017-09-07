# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #first column
  [1,4,7], #middle column
  [2,5,8], #end column
  [0,4,8], #left diagonal
  [2,4,6] #right diagonal
]

def won?(board)
  WIN_COMBINATIONS.find do|win_combination|
    (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") ||
    (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
    #position_taken?(board, win_combination[0]) && position_taken?(board, win_combination[1]) && position_taken?(board, win_combination[2])
  end
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if win_combination = won?(board)
    return board[win_combination[0]]
  end
end
