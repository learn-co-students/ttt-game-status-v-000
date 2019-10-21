# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left columns
  [1, 4, 7], #middle columns
  [2, 5, 8], #right columns
  [0, 4, 8], #diagonal 1
  [2, 4, 6] #diagonal 2
]

def full?(board)
  board.none? {|play| play == nil || play == " "}
end

def won?(board)
    WIN_COMBINATIONS.detect {|combo| board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"}
end

def draw?(board)
  WIN_COMBINATIONS.none?{|combo| board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"}
end

def over?(board)
  if full?(board) == true
    return true
  end
end

def winner(board)
  if WIN_COMBINATIONS.any? {|combo| board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"} == true
    return "X"
  elsif WIN_COMBINATIONS.any? {|combo| board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"} == true
      return "O"
  else
    return nil
  end
end
