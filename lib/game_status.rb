# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def is_win_combination?(board, win_combination)
  position_1 = win_combination[0]
  position_2 = win_combination[1]
  position_3 = win_combination[2]
  if position_taken?(board, position_1) && position_taken?(board, position_2) && position_taken?(board, position_3)
    return board[position_1] == board[position_2] && board[position_1] == board[position_3]
  end
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # top row win combination
  [3,4,5], # middle row win combination
  [6,7,8], # bottom row win combination
  [0,3,6], # left column win combination
  [1,4,7], # middle column win combination
  [2,5,8], # right column win combination
  [0,4,8], # left diagonal win combination
  [2,4,6]  # right diagonal win combination
]

# won?

def won?(board)
  if board.none?{|cell| cell == "X" || cell == "O"}
    return false
  end
  WIN_COMBINATIONS.find{|win_combination| is_win_combination?(board, win_combination)}
end

# full?

def full?(board)
  if board.all? {|cell| cell == "X" || cell == "O"}
    return true
  end
end

# draw?

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
  return false
end

# over?

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  end
  return false
end

# winner?

def winner(board)
  if draw?(board) || !over?(board)
    return nil
  end
  win_combination = won?(board)
  board[win_combination[0]] == "X" ? "X" : "O"
end
