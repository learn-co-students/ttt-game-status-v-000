# require 'pry'

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
    [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.find do |i|
    #board[6]   ==  board[4]   &    board[4]  ==   board[2]  &  board[6] is empty or nil so return false
    board[i[0]] == board[i[1]] && board[i[1]] == board[i[2]] && position_taken?(board, i[0])
  end
end

def full?(board)
  board.all? do |i|
    i == "X" || i == "O"
  end
end

# not sure how to make #won? useful here
def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if winning_index = won?(board)
    board[winning_index.last]
  end
end
