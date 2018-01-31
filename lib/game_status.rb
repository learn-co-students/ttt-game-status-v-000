# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8],# Bottom row
  [0,4,8],# Diagonal left to right
  [2,4,6],# Diagonal right to left
  [0,3,6],# First column
  [1,4,7],# Second column
  [2,5,8] # Third column
]

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

def play(board)
  until over?(board) == true
    turn(board)
  end
  if draw?(board) == true
      puts "Cats Game!"
  else puts "Congratulations #{winner(board)}!"
  end
end
