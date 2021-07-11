require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2],
]

# return win combination or false
def won?(board)
  # confirm that there are three of the same token at the indices defined in win combinations
  WIN_COMBINATIONS.detect do |combination|
    position_1 = board[combination[0]]
    position_2 = board[combination[1]]
    position_3 = board[combination[2]]

    # TODO look at on 6/21 and consider to refactoring
    ([position_1, position_2, position_3].all? { |elt| elt == "X"} ||
    [position_1, position_2, position_3].all? { |elt| elt == "O"})

  end
end

# is there an "O" or "X" at every position?
def full?(board)
  board.all? do |position|
    ["O", "X"].include?(position)
  end
end

# is the board full and there is no winner
def draw?(board)
  full?(board) && !won?(board)
end

# returns true if the board has been won, is a draw, or is full
def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if winning_positions = won?(board)
    first_winning_board_element = board[winning_positions[0]]
  end
end
