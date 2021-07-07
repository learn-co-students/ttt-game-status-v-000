# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2], #top_horizontal
  [3, 4, 5], #mid_horizontal
  [6, 7, 8], #bot_horizontal
  [0, 3, 6], #left_vertical
  [1, 4, 7], #mid_vertical
  [2, 5, 8], #right_vertical
  [0, 4, 8], #diagonal
  [2, 4, 6], #diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.all? { |char| char == "X" || char == "O" }
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
 if won?(board)
   return board[won?(board)[0]]
 else
   return nil
 end
end











