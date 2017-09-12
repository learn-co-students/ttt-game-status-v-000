
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0 , 1 , 2],
  [3 , 4 , 5],
  [6 , 7 , 8],
  [0 , 3 , 6],
  [1 , 4 , 7],
  [2 , 5 , 8],
  [0 , 4 , 8],
  [6 , 4 , 2]
]

# Helper Method
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  end
end

  #def won?(board)
  def won?(board)
WIN_COMBINATIONS.each do |win_combo|
  index_1 = board[win_combo[0]]
  index_2 = board[win_combo[1]]
  index_3 = board[win_combo[2]]

  if index_1 == "X" && index_2 == "X" && index_3 =="X"
    return win_combo
  elsif index_1 == "O" && index_2 == "O" && index_3 =="O"
    return win_combo
  end
end
false
end

def full?(board)
    board.all?{|position| position == "X" || position == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  winning_combo = won?(board)
  if winning_combo != false
   board[winning_combo[0]]
 else
   nil
 end
end
