# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [2,4,6], #diagonal up
  [0,4,8] #diagonal down
]

def won?(board) # board = ["", "", "", "", "" ... "" ]
    WIN_COMBINATIONS.find do |wins| #first iteration, wins = [0, 1, 2]
      board[wins[0]] == board[wins[1]] && board[wins[0]] == board[wins[2]] && position_taken?(board, wins[0])
  end
end

def full?(board)
  WIN_COMBINATIONS.all? do |wins|
    position_taken?(board, wins[0])
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end


def winner(board)
  if !won?(board)
  else board[won?(board).first]
  end
end
