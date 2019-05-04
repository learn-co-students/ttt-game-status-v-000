# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # left-top to right-bottom diagonal
  [2,4,6], # right-top to left-bottom diagonal
]

def won?(board)
  win_combo = []
  # loops through the WIN_COMBINATION constant to grab each
  # winning combination so that they can be stored and checked
  # further down in this method against the board
  WIN_COMBINATIONS.select do |combo|
    combo_index_1 = combo[0]
    combo_index_2 = combo[1]
    combo_index_3 = combo[2]

    check_position_1 = board[combo_index_1]
    check_position_2 = board[combo_index_2]
    check_position_3 = board[combo_index_3]

    if (check_position_1 == "X" && check_position_2 == "X" && check_position_3 == "X") || (check_position_1 == "O" && check_position_2 == "O" && check_position_3 == "O")
      win_combo[0] = combo_index_1
      win_combo[1] = combo_index_2
      win_combo[2] = combo_index_3
      return win_combo
    else
      false
    end
  end
  false
end

#checks if the board has a game in progress or not full
# and checks if the board is full and a draw.
def full?(board)
  #check if there is an in-progress game
  if board.include?("X") && board.include?("O") && board.include?(" ")
    false
    #checks if the board is full and a draw
  elsif (!(board.include?(" "))) && board.include?("X") && board.include?("O")
    true
  end
end

#checks if the board is full without a winner
def draw?(board)
  full?(board) && !won?(board)
end

#checks if the game was won or a draw
def over?(board)
  won?(board) || draw?(board)
end

#checks if he game has a winner
def winner(board)
  if won?(board)
    winning_play = won?(board)
    first_play = winning_play[0]
    if board[first_play] == "X"
      "X"
    elsif board[first_play] == "O"
      "O"
    end
  else
    nil
  end

end
