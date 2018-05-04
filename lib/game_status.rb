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
  win_combo = nil
  WIN_COMBINATIONS.each do |combo|
    if position_taken?(board,combo[0])
      if board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]]
        win_combo = combo
      end
    end
  end
  win_combo
end

def full?(board)
  is_full = true
  count = 0
  while count < board.length
    if !position_taken?(board, count)
      is_full = false
    end
    count += 1
  end
  is_full
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  combo = won?(board)
  if combo != nil
    return board[combo[0]]
  end
end
