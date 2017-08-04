# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left Col
  [1,4,7], # Mid Col
  [2,5,8], # Right Col
  [0,4,8], # NW-SE Diag
  [2,4,6]  # NE-SW Diag
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if ((position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O"))
      return win_combination
    end
  end
  false
end

def full?(board)
  board.all? do |square|
  !(square.nil? || square == " ")
  end
end

def draw?(board)
  if (won?(board) == false && full?(board) == true)
    true
  elsif (won?(board) == false && full?(board) == false)
    false
  elsif (won?(board) == true)
    false
  end
end

def over?(board)
  (won?(board) != false || draw?(board) || full?(board))
end

def winner(board)
  if (won?(board) == false)
    return nil
  else
    board[won?(board)[0]]
  end
end
