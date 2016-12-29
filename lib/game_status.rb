# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

def won?(board)
WIN_COMBINATIONS.detect do |win_combos|
board[win_combos[0]] == board[win_combos[1]] &&
board[win_combos[1]] == board[win_combos[2]] &&
position_taken?(board, win_combos[0])
end
end


def full?(board)
board.all?{|position| position == "X" || position == "O"}
end

def draw?(board)
!won?(board) && full?(board)
end

def over?(board)
won?(board) || draw?(board)
end

def winner(board)
if won?(board)
win_combos = won?(board)
winner = win_combos[0]
return board[winner]
end
end
