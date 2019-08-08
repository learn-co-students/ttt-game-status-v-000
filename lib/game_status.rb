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

board = ["X","X","X","X","X"," X","O","X","O"]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
   WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def  full?(board)
    board.none?{|x| x == "" || x == " " || x = nil}
end

def draw?(board)

  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board) || !won?(board)
    return false
  end
end

def over?(board)
  if (won?(board) || full?(board) || draw?(board))  || (won?(board) && !full?(board))
    return true
  else
    return false
  end
end

def winner(board)
  if winner_array = won?(board)
    board[winner_array[0]]
  else
    return nil
  end
end
