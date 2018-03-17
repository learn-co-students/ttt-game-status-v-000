

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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

def won?(board)  #returns true if a winning combo is detected
  WIN_COMBINATIONS.detect do |combo| #detect method finds first match
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board [combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board) #returns true if every element contains an X or O
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board) #returns true if won? returns false and full? returns true
  full?(board) && !won?(board)
end

def over?(board) #returns true if won? or draw? returns true
  won?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
