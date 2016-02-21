# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

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

# returns false or nil if no win, and the winning array combo if there is a win
def won?(board)
  WIN_COMBINATIONS.each do |combination| #iterate over WIN_COMBINATIONS
    if position_taken?(board, combination[0]) #only check for a win if the position is taken
      if board[combination[0]] == board[combination[1]] && board[combination[0]] == board[combination[2]]
        return combination
      end
    end
  end
  nil
end

def full?(board)
  board.all? do |marker|
    marker != " " && marker != nil
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  won_combo = won?(board)
  if won_combo
    return board[won_combo[0]]
  end
end

