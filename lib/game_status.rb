# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], 
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [0, 4, 8]
  ]
  
  def won?(board)
  WIN_COMBINATIONS.detect do |win_move|
    if board[win_move[0]] == "X"
    win_move
  elsif board[win_move[1]] == "X"
    win_move
  elsif board[win_move[2]] == "X"
    win_move
  elsif board[win_move[3]] == "X"
    win_move
  elsif board[win_move[4]] == "X"
    win_move
  elsif board[win_move[5]] == "X"
    win_move
  elsif board[win_move[6]] == "X"
    win_move
  elsif board[win_move[7]] == "X"
    win_move
  end
end
end
  
  def full?(board)
     board.all?{|token| token == "X" || token == "O"}
  end
  
  
  