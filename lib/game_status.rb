# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Diagonal 0-8
  [2,4,6]  # Diagonal 2-6
]

def won?(board)
 WIN_COMBINATIONS.detect do |combo|
   board[combo[0]] == board[combo[1]] &&
   board[combo[1]] == board[combo[2]] &&
   position_taken?(board, combo[0])
 end
 end

 def full?(board)
   board.all?{|token| token == "X" || token == "O"}
 end

 def draw?(board)
   full?(board) && !won?(board)
 end

 def over?(board)
   won?(board) || draw?(board)
 end

 def winner(board)
  if winner = won?(board)
    board[winner.first]
  end
end
