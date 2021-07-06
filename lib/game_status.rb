# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2], # Top row
[3,4,5], # Middle row 
[6,7,8], # Bottom row
[0,3,6], # Verticle first row win
[1,4,7], # Vertical second row win
[2,5,8], # Vertical third row win 
[0,4,8], # Diagonal top win
[6,4,2] # Diagonal bottom win
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
