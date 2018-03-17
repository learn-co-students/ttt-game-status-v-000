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

#def won?(board)
#  WIN_COMBINATIONS.detect do |combo|
#    (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O") &&
#    (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X") &&
#    position_taken?(board, combo[0])
#  end
#end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])  #If first position ((combo[0])) runs through win combinations and ALSO satisfies position taken, then the board obviously has activity
  end
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  winning = won?(board)
    if winning
      board.fetch(winning[0])
    else
      nil
  end
end
