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


def won?(board)
    WIN_COMBINATIONS.find do |place|
      board[place[0]]=="X" && board[place[1]]=="X" && board[place[2]]== "X" && position_taken?(board, place[0]) ||
      board[place[0]]=="O" && board[place[1]]=="O" && board[place[2]]== "O" && position_taken?(board, place[0])
    end
  end

def full?(board)
  board.all? do |spot|
    spot== "X" || spot=="O"
    end
  end

def draw?(board)
  !won?(board) && full?(board)
end

def over? (board)
  won?(board) || full?(board) || draw?(board)
end

def winner (board)
  WIN_COMBINATIONS.find do |place|
    if board[place[0]]=="X" && board[place[1]]=="X" && board[place[2]]== "X" && position_taken?(board, 0)
    return "X"
  elsif board[place[0]]=="O" && board[place[1]]=="O" && board[place[2]]== "O" && position_taken?(board, 0)
     return "O"
  else
     nil
  end
end
end
