# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
  if !board.include?("X")
    return false
  else
    WIN_COMBINATIONS.each do |win_combo|
      board_check = [board[win_combo[0]], board[win_combo[1]], board[win_combo[2]]]
      if board_check.all? {|space| space == "X"} || board_check.all? {|space| space == "O"}
        return win_combo
      end
    end
  end
  else
    return nil
end

def full?(board)
  spots_filled = board.select {|spot| spot == "X" || spot == "O"}
  if spots_filled.length == 9
    return true
  else
    return false
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || won?(board) || full?(board)
end

def winner(board)
  winning_indices = won?(board)
  if winning_indices.kind_of?(Array)
    return board[winning_indices[0]]
  else
    return nil
  end
end
