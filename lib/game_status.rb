# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [2, 5, 8], [1, 4, 7], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_pos|
    board_pos = []
    win_pos.each do |pos|
      board_pos << board[pos]
    end
    if board_pos.all? {|pos| pos == "X"}
      return win_pos
    elsif board_pos.all? {|pos| pos == "O"}
      return win_pos
    end
  end
  return false
end

def full?(board)
  if board.all? {|pos| pos == "X" || pos == "O"}
    return true
  else
    return false
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  end
end

def over?(board)
  if won?(board) != false || draw?(board) == true
    return true
  end
end

def winner(board)
  if won?(board) != false
    return board[won?(board)[0]]
  else
    return nil
  end
end
