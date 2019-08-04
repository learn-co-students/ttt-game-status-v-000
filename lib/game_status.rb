# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

def won?(board)

  WIN_COMBINATIONS.find do |cmbo|
    board[cmbo[0]] == board[cmbo[1]] &&
    board[cmbo[1]] == board[cmbo[2]] &&
    position_taken?(board, cmbo[0])
  end
end


def full?(board)
 if board.include?(" ")
  return false
 else return true
 end
end

def draw?(board)
!won?(board) && full?(board)
end

def over?(board)
 draw?(board) || full?(board) || won?(board)
  end

def winner(board)
 if cmbo = won?(board)
  board[cmbo.first]
 end
end
