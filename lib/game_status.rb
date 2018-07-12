# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

# #won? method determines if the game has been won by a player
# returns array of win_combination if true or nil if false
def won?(board)
WIN_COMBINATIONS.detect do |win_combination|
    #Load each win index into a variable
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    #Load the token (if any) at index position into a variable
    position_1 = board[win_index_1].upcase
    position_2 = board[win_index_2].upcase
    position_3 = board[win_index_3].upcase

    # Determine whether positions contain winning X (or O) combination
    (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
  end
end

# #full? method determines if there are any open positions left on the board
def full?(board)
  board.none? do |position|
    position == " " || position == "" || position.nil?
  end
end

# #draw? determines if there is a draw
# a draw occurs when the board is full and there are no winners
def draw?(board)
  if full?(board) && !(won?(board))
    true
  else
    false
  end
end

# #over? method determines if any of the following has occured:
#   1. A player has won
#   2. The game is a draw
def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end

# #winner method determines which player won (X or O)
def winner(board)
  if won?(board)
    winning_index = won?(board)[0]
    winning_token = board[winning_index]
  else
    nil
  end
end
