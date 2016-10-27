# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # First column
  [1,4,7],  # Second column
  [2,5,8],  # Third column
  [0,4,8],  # First diagonal
  [2,4,6]   # Second diagonal
]

def won?(board)
  result = WIN_COMBINATIONS.select do |combo|
    if combo[0] == combo[1] && combo[0] == combo[2] && position_taken?(board, combo[0])
      return combo
    end
  end
  if result == []
    false
  else
    result[0]
  end
end

#   if WIN_COMBINATIONS[0][0] == WIN_COMBINATIONS[0][1] && WIN_COMBINATIONS[0][0] == WIN_COMBINATIONS[0][2] && position_taken?(board, WIN_COMBINATIONS[0][0])
#     return WIN_COMBINATIONS[0]
#   elsif position_taken?(board, WIN_COMBINATIONS[1][0]) && position_taken?(board, WIN_COMBINATIONS[1][1]) && position_taken?(board, WIN_COMBINATIONS[1][2])
#       return WIN_COMBINATIONS[1]
#   elsif position_taken?(board, WIN_COMBINATIONS[2][0]) && position_taken?(board, WIN_COMBINATIONS[2][1]) && position_taken?(board, WIN_COMBINATIONS[2][2])
#       return WIN_COMBINATIONS[2]
#   elsif position_taken?(board, WIN_COMBINATIONS[3][0]) && position_taken?(board, WIN_COMBINATIONS[3][1]) && position_taken?(board, WIN_COMBINATIONS[3][2])
#       return WIN_COMBINATIONS[3]
#   elsif position_taken?(board, WIN_COMBINATIONS[4][0]) && position_taken?(board, WIN_COMBINATIONS[4][1]) && position_taken?(board, WIN_COMBINATIONS[4][2])
#       return WIN_COMBINATIONS[4]
#   elsif position_taken?(board, WIN_COMBINATIONS[5][0]) && position_taken?(board, WIN_COMBINATIONS[5][1]) && position_taken?(board, WIN_COMBINATIONS[5][2])
#       return WIN_COMBINATIONS[5]
#   elsif position_taken?(board, WIN_COMBINATIONS[6][0]) && position_taken?(board, WIN_COMBINATIONS[6][1]) && position_taken?(board, WIN_COMBINATIONS[6][2])
#       return WIN_COMBINATIONS[6]
#   elsif position_taken?(board, WIN_COMBINATIONS[7][0]) && position_taken?(board, WIN_COMBINATIONS[7][1]) && position_taken?(board, WIN_COMBINATIONS[7][2])
#       return WIN_COMBINATIONS[7]
#   else
#     false
#   end
# end
