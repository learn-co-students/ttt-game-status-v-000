require = 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
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
  WIN_COMBINATIONS.detect do |win_combo|
      position1 = board[win_combo[0]]
      position2 = board[win_combo[1]]
      position3 = board[win_combo[2]]
      if (position1 == position2 && position2 == position3) && position_taken?(board, win_combo[0])
        return win_combo
      end
  end
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  end
end

def winner(board)
  WIN_COMBINATIONS.detect do |win_combo|
    position1 = board[win_combo[0]]
    position2 = board[win_combo[1]]
    position3 = board[win_combo[2]]
      if (position1 == position2 && position2 == position3) && position_taken?(board, win_combo[0])
        return position1
      end
  end
end
