# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row win
  [3, 4, 5], #middle row win
  [6, 7, 8], #bottom row win
  [0, 3, 6], #first column win
  [1, 4, 7], #second column win
  [2, 5, 8], #third column win
  [0, 4, 8], #first diagonal win
  [2, 4, 6] #second diagonal win
]

def won?(board)
  WIN_COMBINATIONS.detect do |win|
    if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] =="X"
      return win
    elsif board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] =="O"
      return win
    else
      false
    end
  end
end

def full?(board)
  board.all? do |i|
    i == "X" || i == "O"
  end
end


def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  full?(board) || won?(board) 
end

def winner(board)
  WIN_COMBINATIONS.detect do |win|
    if board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] =="X"
      return "X"
    elsif board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] =="O"
      return "O"
    else
      false
    end
  end
end
