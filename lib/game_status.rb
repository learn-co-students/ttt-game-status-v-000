# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  #First column
  [1,4,7],  #Second column
  [2,5,8],  #Third column
  [0,4,8],  #diagonal1

  [2,4,6]  #diagonal2
]

def won?(board)
  WIN_COMBINATIONS.detect do |combination|
    board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] && position_taken?(board,combination[0])
end
end

def full?(board)
  WIN_COMBINATIONS.all? { |combination| position_taken?(board,combination[0]) == true }
end

def draw?(board)
  incomplete_board = !full?(board)
  if won?(board) && full?(board) || incomplete_board
    return false
  else
    return true
end
end

def over? (board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    win_index = won?(board)[0]
    return board[win_index]
  end
end
