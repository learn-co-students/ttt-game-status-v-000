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
    [2,4,6]       ]

# won method  ruby lib/game_status.rb
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[2]]  == board[combo[1]]  && position_taken?(board,combo[0])
  end
end
# full
def full?(board)
   board.all? { |pos| pos != " "}
end
#draw
def draw?(board)
  !won?(board) == true && full?(board) == true
end
#over
def over?(board)
 won?(board) == true || full?(board) == true || draw?(board) == true
end
#winner
def winner(board)
  if !won?(board) 
    nil
  else
    board[won?(board)[0]]
  end
end
#end
