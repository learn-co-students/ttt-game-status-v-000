# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Bottom row
  [1,4,7], # Bottom row
  [2,5,8],
  [0,4,8], # Diagonal from top left to bottom right
  [2,4,6] # Diagonal from top right to bottom left
]

# def won?(board)
#   WIN_COMBINATIONS.each do |win_combination|
#     win_combination.each do |space|
#       board[space].all? { |player|  player = 'X'}
#     # board[win_combination].all? do |player|
#       return WIN_COMBINATIONS[win_combination]
#     end
#   end
# end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? { |player| player == "X" || player == "O" }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  if winning_combo = won?(board) # this works because won? returns winning array
    board[winning_combo.first]
  end
end
