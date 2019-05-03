# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right colum
  [0,4,8], # Left diagonal
  [2,4,6] # Right diagnoal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
      return win_combo
    elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
      return win_combo
    end
  end
    false
end


def full?(board)
  board.all? do |taken|
    taken != " "
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board)
    new_win_combo = won?(board)
      if board[new_win_combo[0]] == "X" && board[new_win_combo[1]] == "X" && board[new_win_combo[2]] == "X"
        return "X"
      elsif board[new_win_combo[0]] == "O" && board[new_win_combo[1]] == "O" && board[new_win_combo[2]] == "O"
        return "O"
      end
    end
end
