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

  winning_combo = []

  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ||  board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      winning_combo += combo
    end
  end

  if winning_combo == []
    false
  else
    winning_combo
  end
end

def full?(board)
  full = true
  if board.any?{|space| space == " "}
    full = false
  end
  full
end

def draw?(board)
  draw = false
  if won?(board) == false && full?(board) == true
    draw = true
  end
  draw
end

def over?(board)
  over = false
  if won?(board) != false
    over = true
  elsif draw?(board) == true
    over = true
  end
  over
end

def winner(board)
  if won?(board).kind_of?(Array)
    win = won?(board)
    board[win[0]]

  else
    nil
  end

end
