require "pry"
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
winning_combination = WIN_COMBINATIONS.select do |array|
    win_index_1 = array[0]
    win_index_2 = array[1]
    win_index_3 = array[2]
    if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      array
    elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      array
    else
      false
    end
  end
  winning_combination[0]
end


def full?(board)
  board.none?{|position| position == " "}
end


def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board)
  board[won?(board)[0]]
  else
  end
end
