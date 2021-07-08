# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?( board)
  WIN_COMBINATIONS.find do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
      return win_combination
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      return win_combination
    else
      false
    end
  end
end

def full?( board)
  board.all?{|positions| positions == "X" || positions == "O"}
end

def draw?( board)
  full?( board) && !won?( board)
end

def over?( board)
  (full?( board) && !won?( board)) || won?( board)
end

def winner( board)
  winning_variable = won?(board)
    #puts "#{winning_variable}"
  if winning_variable
    winning_index = winning_variable[0]
    #puts "#{board[winning_index]}"
    return board[winning_index]
  else
     nil
  end
end

def other_moves( board)
  if full?( board) || draw?( board) || over?( board)
    true
  else
    false
  end
end
