# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row - horizontal
  [3,4,5], #middle row - horizontal
  [6,7,8], #bottom row - horizontal
  [0,3,6], #left column - vertical
  [1,4,7], #middle column - vertical
  [2,5,8], #right column - vertical
  [0,4,8], #diagonal 1
  [2,4,6]  #diagonal 2
]

def won?(board)
  WIN_COMBINATIONS.detect do | win_combination |
    location1 = win_combination[0]
    location2 = win_combination[1]
    location3 = win_combination[2]

    board[location1] == board[location2] &&
    board[location2] == board[location3] &&
    board[location1] != " "
#make sure any one of them is not empty
  end
end

def full?(board)
  board.none? { | position | position == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  win_combination = won?(board) #=> example: [0,4,8]
  if win_combination
  winning_location = win_combination[0] #=> 0
  board[winning_location] #=> "O"
  end
end
