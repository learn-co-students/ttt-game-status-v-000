# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |win|
    board[win[0]] == board[win[1]] && board[win[1]] == board[win[2]] && position_taken?(board, win[0])
  end
end

def full?(board)
  board.any? {|move| move == " "} == false
end

def draw?(board)
  if won?(board) && full?(board)
    false
  elsif full?(board)
    true
  end
end

def over?(board)
  if won?(board) && !full?(board) || !won?(board) && full?(board) || won?(board) && full?(board)
    true
  end
end

def winner(board)
  if winner = won?(board)
    board[winner[0]]




  end



end
