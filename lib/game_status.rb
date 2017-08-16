# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #diagonal 1
  [2,4,6] #diagonal 2
]

#won? Methods
def won?(board)
winning_array = WIN_COMBINATIONS.detect do |win_index|
  if win_index.all? {|position| board[position] == "X" } == true
    winning_array.inspect
  elsif win_index.all? {|position| board[position] == "O" } == true
    winning_array.inspect
  end
end
end


#full? method

def full?(board)
  full_board = board.none? do |position|
      position == " " || position == ""
end
end


#draw? method

def draw?(board)
  if won?(board) == nil && full?(board) == true
    return true
  else
    return false
  end
end


#over? method

def over?(board)
  if won?(board) == true || full?(board) == true || draw?(board) == true
    return true
  end
end

#winner method

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
end
