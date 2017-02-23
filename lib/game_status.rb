# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Board Index:
#0 1 2
#3 4 5
#6 7 8

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
[[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.find do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]] && position_taken?(board, win_combination[0])
  end
end

# The `#full?` method should accept a board and return true if every element in the board contains either an "X" or an "O".
# def full?(board)
#   board.all? == "X" || "O"
#   return true
#   position_taken(board, board.all)
# end
def full?(board)
  board.none? do |i|
    i == " " || i.nil?
  end
end

# Build a method `#draw?` that accepts a board and returns true if the board has not been won and is full and false if the board is not won and the board is not full, and false if the board is won. You should be able to compose this method solely using the methods you used above with some ruby logic.
def draw?(board)
  won?(board) == nil && full?(board) == true
end

# def draw?(board)
#   full?(board) == true && won?(board) == nil
# end


# Build a method `#over?` that accepts a board and returns true if the board has been won, is a draw, or is full. You should be able to compose this method solely using the methods you used above with some ruby logic.
def over?(board)
won?(board) || draw?(board)
end


# The `#winner` method should accept a board and return the token, "X" or "O" that has won the game given a winning board.
# The `#winner` method can be greatly simplified by using the methods and their return values you defined above.

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
end
