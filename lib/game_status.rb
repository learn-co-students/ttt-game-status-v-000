# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
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
[2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |xy|
  position_1 = board[xy[0]]
  position_2 = board[xy[1]]
  position_3 = board[xy[2]]
  if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == 'O' && position_2 == 'O' && position_3 == 'O')
    return xy
  end
end
nil
end

def full?(board)
  board.all? {|location| location == "X" || location == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif won?(board) && !full?(board)
    false
  else won?(board)
    false
  end
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  winner = won?(board)
  if winner
    board[winner.first]
  end
end
