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
  [2,4,6]
]

#determine if there's a winner
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      return combo
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      return combo
    end
  end
  return false
end

#determine if the board is full
def full?(board)
  board.all? {|element| element == "X" || element == "O"}
end

#determine if there's a draw
def draw?(board)
  if !(won?(board)) && full?(board)
    return true
  end
end

#determine if the game is over
def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
end

#determines who won the game if there's a winner
def winner(board)
  if !(won?(board))
    return nil
  elsif won?(board).all?{|element| board[element] == "X"}
      return "X"
  elsif won?(board).all?{|element| board[element] == "O"}
      return "O"
  end
end
