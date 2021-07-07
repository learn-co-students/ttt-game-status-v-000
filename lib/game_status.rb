require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    win_1 = combo[0]
    win_2 = combo[1]
    win_3 = combo[2]

    if board[win_1] == "X" && board[win_2] == "X" && board[win_3] == "X"
      return combo
    elsif board[win_1] == "O" && board[win_2] == "O" && board[win_3] == "O"
      return combo
    end
  end
  false
end

def full?(board)
  !board.any? {|space| space == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end


def full?(board)
  !board.any? {|space| space == " "}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    combo = won?(board)
    win_1 = combo[0]
    board[win_1]
  end
end
