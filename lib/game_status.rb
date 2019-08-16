# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
  results = nil
  WIN_COMBINATIONS.each do |winner|
    test_win = winner
    if test_win.all?{|tester| board[tester] == "X"}
      results = test_win
    elsif test_win.all?{|tester| board[tester] == "O"}
      results = test_win
    end
  end
  return results
end

def full?(board)
  board.all? do |spot|
    spot == "X" || spot == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  winning_board = won?(board)
  if winning_board == nil
    return nil
  else
    return board[winning_board[0]]
  end
end
