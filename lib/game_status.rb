# Helper Method
WIN_COMBINATIONS = [ [0,1,2], [3,4,5], [6,7,8], [0,4,8], [6,4,2], [0,3,6], [1,4,7], [2,5,8] ]

# Define your WIN_COMBINATIONS constant
def won?(board)
  board.all? {|i| i != " " || i != ""}
  winning_array = WIN_COMBINATIONS.detect do |win_array|
    if win_array.all? {|position| board[position] == "X" } == true
      winning_array.inspect
    elsif win_array.all? {|position| board[position] == "O" } == true
      winning_array.inspect
    end
  end
end

def full?(board)
  board.none? {|i| i == "" || i == " "}
end

def draw?(board)
   won?(board) == nil && full?(board) == true
end

def over?(board)
  if (draw?(board) == true) || (won?(board) != nil)
    over = true
  else
    over = false
  end
end

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
end
