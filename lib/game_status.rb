# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top_row_win
  [3, 4, 5], #middle_row_win
  [6, 7, 8], #bottom_row_win
  [0, 3, 6], #left_collumn_win
  [1, 4, 7], #middle_collumn_win
  [2, 5, 8], #right_collumn_win
  [0, 4, 8], #left_diagonal_win
  [2, 4, 6] #right_diagonal_win
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  # using all? to return true if each iteration is true, if each index is either X or O
  board.all? { |index| index == "X" || index == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo[0]]
  end
end
