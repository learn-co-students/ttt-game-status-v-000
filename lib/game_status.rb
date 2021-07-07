# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS =  [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    windex_1 = win_combination[0]
    windex_2 = win_combination[1]
    windex_3 = win_combination[2]

    position_1 = board[windex_1]
    position_2 = board[windex_2]
    position_3 = board[windex_3]

    if board.all? { |index| index == " "}
      false
    elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end
  false
end

def full?(board)
  board.all? { |space| space == "X" || space == "O" }
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else !full?(board) && !won?(board)
    false
  end
end

def over?(board)
  won?(board) && full?(board) || draw?(board) || won?(board) && !full?(board)
end

def winner(board)
  if winning_combo = won?(board)
board[winning_combo[0]]
  end
end
