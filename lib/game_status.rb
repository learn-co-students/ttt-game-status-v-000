# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
[0,1,2],#top
[3,4,5],#middle
[6,7,8],#last
[0,3,6],#1 vertical
[1,4,7],#2 vertical
[2,5,8],#3 verticl
[0,4,8],#1 across
[2,4,6]#2 across

]
def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination| # full / detect finds an element based on a condition or returns false for nothing found.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == position_2 && position_2 == position_3 && position_1 != " "
      win_combination # if this is soft returns (without the return keyword) detect will return this.
    end
  end
end

def draw?(board)
  !won?(board) && full?(board)# draw in a game of tictactoe happens when the board is full and no one has won
  # !false evaluates to true, ! stands for not
end

def over?(board)
  draw?(board) || won?(board) # a game is over when theres either a draw OR someone has won
end

def winner(board)
  if win_combo = won?(board) # what won?(board) returns array of 3 indexes. ex [0,1,2]
    board[win_combo[1]]
  end
end
