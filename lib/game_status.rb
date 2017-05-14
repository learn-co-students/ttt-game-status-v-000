# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #left-right diagonal
  [2,4,6], #right-left diagonal
  [0,3,6], #first column
  [1,4,7], #middle column
  [2,5,8] #last column
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if position_taken?(board, win_combination[0]) == true && board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]]
      return win_combination
    end
  end
  return nil
end

def full?(board)
  board.all? do |board_move|
    board_move == "X" || board_move == "O"
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == nil
    return true
  end
  return false
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    return true
  end
  return false
end

def winner(board)
  if won?(board) == nil
    return nil
  else
    winner = won?(board)
    board[winner[0]]
  end
end
