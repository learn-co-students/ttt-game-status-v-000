# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [6,4,2],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
]

def won?(board)
  outcome = []
  if board.all?{|x| x == " "}
    return false
  end
  WIN_COMBINATIONS.each do |combo|
    if combo.all?{|i| board[i] == "X"} || combo.all?{|i| board[i] == "O"}
      combo.each do |n|
        outcome << n
      end
    end
  end
  if outcome.empty?
    return false
  else
    return outcome
  end
end

def full?(board)
  if board.all?{|x| x != " "}
    return true
  else
    return false
  end
end

def draw?(board)
  first_row_win = WIN_COMBINATIONS[0]
  diagonal_win_1 = WIN_COMBINATIONS[3]
  diagonal_win_2 = WIN_COMBINATIONS[4]
  if board.all?{|x| x != " "}
    if first_row_win.all?{|i| board[i] == "X"} || first_row_win.all?{|i| board[i] == "O"}
      return false
    elsif diagonal_win_1.all?{|i| board[i] == "X"} || diagonal_win_1.all?{|i| board[i] == "O"}
      return false
    elsif diagonal_win_2.all?{|i| board[i] == "X"} || diagonal_win_2.all?{|i| board[i] == "O"}
      return false
    else
      return true
    end
  else
    return false
  end
end

def over?(board)
  if board.all?{|y| y != " "}
    WIN_COMBINATIONS.each do |combo|
      if combo.all?{|i| board[i] == "X"} || combo.all?{|i| board[i] == "O"}
        return true
      end
    end
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |combo|
    if combo.all?{|i| board[i] == "X"} || combo.all?{|i| board[i] == "O"}
      return board[combo[0]]
    end
  end
  return nil
end
