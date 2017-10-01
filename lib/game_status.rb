# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]]

def won?(board)
  WIN_COMBINATIONS.detect do |three|
    board[three[0]] == board[three[1]] &&
    board[three[1]] == board[three[2]] &&
    position_taken?(board, three[0])
  end
end

def full?(board)
  board.all? do |mark|
    mark == "X" || mark == "O"
  end
end

def draw?(board)
 if (full?(board) && !won?(board) )
   true
 end
end

def over?(board)
  draw?(board) || won?(board) || full?(board)
end


def winner(board)
  if winning = won?(board)
    board[winning[2]]
  end
end
