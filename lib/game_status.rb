# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  win = Array.new
  if WIN_COMBINATIONS.any? do |condition|
      win = condition
      board[condition[0]] != " " && board[condition[0]] == board[condition[1]] && board[condition[1]] == board[condition[2]]
      end
  else
      win = false
  end
  return win
end

def full?(board)
  board.none? do |space|
    space == " "
  end
end

def draw?(board)
 if full?(board) == true && won?(board) == false
   true
 end
end

def over?(board)
  if won?(board) != false || draw?(board) == true || full?(board) == true
    true
  end
end

def winner(board)
  if won?(board) != false
    win = won?(board)
    return board[win[0]]
  else
    return nil
  end
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
