# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS =
[
  [0,1,2], # Top row
  [3,4,5],  # Midlle row
  [6,7,8], # last row

  [0,3,6], # left column
  [1,4,7], # Midlle column
  [2,5,8], # right column
  [0,4,8], # Midlle to the right
  [2,4,6], # Midlle to the left
]
# Define your WIN_COMBINATIONS constant
def won?(board)
  won= WIN_COMBINATIONS.each do |win_combo|
    if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
    return win_combo
  elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
     return win_combo
    end
  end
    return false
end

def full?(board)
  board.none? { |e| e==" " }
end
def draw?(board)
  (!won?(board) && full?(board))
end

def over?(board)
   if won?(board)
      true
   else
      full?(board)
    end
end

def winner(board)
    combi=won?(board)
  if (won?(board))
      return board[combi[0]]
  else

  end
end
