# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
  ]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if board[win_combination[0]] == "X"  && board[win_combination[1]] == "X"  && board[win_combination[2]] == "X"
      true
    elsif board[win_combination[0]] == "O"  && board[win_combination[1]] == "O"  && board[win_combination[2]] == "O"
      true
    else
      false
    end
  end
  end


#def won?(board)
#      WIN_COMBINATIONS.detect do |win_combination|
#      	win_combination[0] == "X" && win_combination[1] == "X" && win_combination[2] == "X" || win_combination[0] == "O" && win_combination[1] == "O" && win_combination[2] == "O"
#      end
#  end

  def full?(board)
  board.all? do |index|
    if index == "X" || index == "O"
      true
    else
      false
    end
  end
  end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  else won?(board)
    false
  end
end

def over?(board)
  if draw?(board)
    true
  elsif won?(board)
    true
  else
    false
  end
end

def winner(board)
  if solution = won?(board)
    board[solution.first]
  else
    nil
  end
end 
  #def won?(board)
  #  WIN_COMBINATIONS.detect do |win_combination|
  #    win_combination.all? {|win_index|
  #    if board[win_index] == "X" || board[win_index] == "O"
  #      true
  #    else
  #      false
  #    end}

  #end
#end
