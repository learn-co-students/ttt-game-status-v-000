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
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combos|
  if board[win_combos[0]] == board[win_combos[1]] && board[win_combos[1]] ==  board[win_combos[2]]  && position_taken?(board, win_combos[0]) 
    return win_combos
  end
end
return false
end

def full?(board)
  board.all? {|filled| filled == "X" || filled == "O"}
end


def draw?(board)
  full?(board) && !won?(board) ? true : false
end

def over?(board)
  won?(board) || draw?(board) || full?(board) ? true : false
end

def winner(board)
  if win_combos = won?(board)
   return board[win_combos[0]]
  else
     return nil
  end
end