
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
  [6,4,2]
]

# Method to determine which win combination caused a win
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end
end

#Method to check if the board is full
def full?(board)
  board.none? do |index|
    index == "" || index == " "
  end
end

#Method to check for a draw/tie
def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

#Method to check if game is over
def over?(board)
  if won?(board) || full?(board)
    return true
  else
    return false
  end
end

#Method to check who the winner is "X" or "O"
def winner(board)
  win_combination = won?(board)
  if won?(board) == nil
    return nil
  end
  spot_1 = win_combination[0]
  spot_2 = win_combination[1]
  spot_3 = win_combination[2]

  spot_1_value = board[spot_1]
  spot_2_value = board[spot_2]
  spot_3_value = board[spot_3]

  if spot_1_value == "X" && spot_2_value == "X" && spot_3_value == "X"
    winner = "X"
  elsif spot_1_value == "O" && spot_2_value == "O" && spot_3_value == "O"
    winner = "O"
  else
    winner = nil
  end
  return winner
end
