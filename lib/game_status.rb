# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # First column
  [1,4,7], # Second column
  [2,5,8], # Third column
  [0,4,8], # Left diagonals
  [2,4,6] # Right diagonals
]

#won?
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
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
  false
end

#full?
def full?(board)
  board.all? do |i|
    i != " "
  end
end

#draw?
def draw?(board)
  if !won?(board) && full?(board)
    true
  end
end

#over?
def over?(board)
  won?(board) || draw?(board) || full?(board) ? true : false
end

#winner
def winner(board)
  if !won?(board)
    return nil
  else
    won?(board).each do |win_combination|
      if board[win_combination[0]] == "X" &&
      board[win_combination[1]] == "X" &&
      board[win_combination[2]] == "X"
      return "X"
      else return "O"
      end
    end
  end
end
