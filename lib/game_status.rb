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
  [2, 4, 6]
]

#won
def won?(board)
  if !board.include?("X") && !board.include?("O")
    return false
  elsif
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
      end
    end
  else
    return false
  end
end

#full
def full?(board)
  if !board.include?(" ")
    return true
  else
    return false
  end
end

#draw
def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

#over
def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  else
    return false
  end
end

#winner
def winner(board)
  winning_combo = won?(board)
  if winning_combo
    board[winning_combo.first]
  end
end
