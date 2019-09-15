# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [0, 4, 8], # 1st diagonal
  [2, 4, 6]  # 2nd diagonal
]

# won?

def won?(board)

  empty_board = board.all? do |position| # Iterate through items in board to check if the board is empty
    position == " "
  end

  if empty_board
    return false
  end

  WIN_COMBINATIONS.each do |combination|   # Iterate through each of the combinations in this array to check for winning combination

    winning_combination = []

    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      winning_combination = [win_index_1, win_index_2, win_index_3]
      return winning_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      winning_combination = [win_index_1, win_index_2, win_index_3]
      return winning_combination
    end
  end
  return false # If not an empty board and there's no winning combination, return false
end

# full?

def full?(board)
  full_board = board.all? do |position| # Iterate through items in board to check if the board is full
    position == "X" || position == "O"
  end

  if full_board
    return true
  else
    return false
  end
end

# draw?

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

# over?

def over?(board)
  if draw?(board) == true || won?(board) != false
    return true
  else
    return false
  end
end

# winner

def winner(board)
  WIN_COMBINATIONS.each do |combination|   # Iterate through each of the combinations in this array to check for winning combination

    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return "O"
    end
  end
  return nil # Return nil if neither X nor O is the winner
end
