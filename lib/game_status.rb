# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2], # " #board[0] | #board[1] | #board[2] "
[3,4,5], # horizontal win
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[6,4,2]
]


def won?(board)
  WIN_COMBINATIONS.find { |w_c| board[w_c[0]] == board[w_c[1]] && board[w_c[1]] == board[w_c[2]] && board[w_c[0]] != " " }
end

def full?(board)
  board.each do |spaces|
    if spaces != "X" && spaces != "O"
      return false
    else
    true
  end
 end
end

def draw?(board)    
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board) #=> ["X","X","X"]
  winner = won?(board) #=> [6,4,2]
  if winner
    board[winner[0]]
  end
end