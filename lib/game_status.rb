# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # left c
  [1,4,7], # middle c
  [2,5,8], # right c
  [0,4,8], # diag lr
  [2,4,6]  # diag rl
]

def won?(board)
  WIN_COMBINATIONS.each do |win_checker|
    win_index_1 = win_checker[0]
    win_index_2 = win_checker[1]
    win_index_3 = win_checker[2]
    cross_check = [board[win_index_1], board[win_index_2], board[win_index_3]]

    if cross_check.all? do |check| # check x win
      check == "X"
    end
    return win_checker


    elsif cross_check.all? do |check| # check O win
      check == "O"
    end
    return win_checker

    elsif board.none? do |check| # check empty board
      (check == "X" || check == "O")
    end
    return false

    end
end
  return false
end

def full?(board)
  board.all? do |check|
    (check == "X" || check == "O")
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board).class == Array || full?(board) == true || draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if over?(board) == true && draw?(board) == false
    winning = won?(board)
    victor = board[winning[0]]
    return victor
  end
end
