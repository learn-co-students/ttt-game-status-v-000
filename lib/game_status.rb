
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #baby array
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

#check to see how game was won
def won?(board)

WIN_COMBINATIONS.find do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])

  end
 #no need to
 #   puts, because logic should evaluate T or F
end

#check to see if board is full
def full?(board)

  board.all? do |space|
 (space == "X" || space == "O")
  end

end

#method to check for stalemate

def draw?(board)
  full?(board) && !(won?(board))
end

#check to see if there are no more moves
def over?(board)
  won?(board) || draw?(board) || full?(board)
end


  #check to see who won in any board, returns nil if no one won
 def winner(board)

if over?(board)
return board[over?(board)[0]]
end
end
