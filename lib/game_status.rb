# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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

def won? (board)
  WIN_COMBINATIONS.each do |win_index|
    board_position_1 = board[win_index[0]]
    board_position_2 = board[win_index[1]]
    board_position_3 = board[win_index[2]]
    if board_position_1 == board_position_2 && board_position_2 == board_position_3 && position_taken?(board, win_index[0])
      return win_index
    end
  end
  false
end

def full? (board)
  board.none?{|space| space == " " }
end

def draw? (board)
  if won?(board) == false && full?(board) == true
    return true
  end
end

def over? (board)
  if won?(board) || full?(board) || draw?(board) == true
    return true
  end
end

def winner (board)
  if won?(board) == false
    return nil
  end
  if board[won?(board)[0]] == "X"
    return "X"
  else "O"
  end
end
