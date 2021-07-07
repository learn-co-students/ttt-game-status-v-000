# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [[0, 1, 2], 
[3, 4, 5], 
[6, 7,8], 
[0, 3, 6], 
[1, 4, 7], 
[2, 5, 8], 
[0, 4, 8], 
[2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[1]] == board[win_combination[2]] &&
    position_taken?(board, win_combination[0])
  end
 
end 


def full?(board)
  !board.any? { |x| x == " " }
end 

def draw?(board)
 !won?(board) && full?(board)
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end 

def winner(board)
  if won?(board)
    winner = won?(board)
    board[winner[0]]
  end 

end 