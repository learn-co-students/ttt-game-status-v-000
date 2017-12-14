board = [" "," "," "," "," "," "," "," "," "]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # first column
  [1,4,7], # second column
  [2,5,8], # third column
  [0,4,8], # left diagonal
  [2,4,6] # right diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|

    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if ((position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O"))
      win_combination
    else
      false
    end
  end
end

def full?(board)
  positions=[0,1,2,3,4,5,6,7,8]
  checkPositions = positions.select do |index|
    position_taken?(board,index)
  end

  if checkPositions.length == 9
    true
  else
    false
  end
end

def draw?(board)
  # true if board not won and full
  # false if board not won and not full
  # false if board is won
  if (!won?(board) && full?(board))
    true
  elsif (!(won?(board) && full?(board)) || (won?(board)))
    false
  else
    false
  end
end

def over?(board)
  # true if board won
  # true if board draw
  # true if board full
  if (won?(board) || draw?(board) || full?(board))
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
