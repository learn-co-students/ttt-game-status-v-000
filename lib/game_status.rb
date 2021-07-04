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

  WIN_COMBINATIONS.detect do |win_combination|

    board[win_combination[0]] && board[win_combination[1]] &&
    board[win_combination[1]] && board[win_combination[2]] &&
    position_taken?(board, win_combination[0])

    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" &&
      board[win_combination[2]] == "X"
      return win_combination
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" &&
      board[win_combination[2]] == "O"
      return win_combination
    else
      false
    end
  end
end

def full?(board)
  if board.detect {|position| position == " " || position == nil}
    false
  else
    true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  end
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if win_combination = won?(board)
    return board[win_combination.first]
  end
end
