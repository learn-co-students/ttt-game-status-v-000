require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
  #if empty board, return false
  #if draw, return false
  WIN_COMBINATIONS.detect do | win_combination | # win_combination is going to be on the first loop [0,1,2]
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    position_1 == position_2 && position_1 == position_3 && position_taken?(board, win_index_1)
  end
end
#
def full?(board)
 #  if draw, return true
 #  if in-progress game, return false
 # if draw? == true
 #   return true
 # if over? == false
 #   return false
 board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
# if there is a draw, no one has won and the board is full
# conditions automatically return true and false, and if that condition is the last thing a ruby method reads, it will return the condition's return value
  if won?(board) == nil && full?(board) == true
    return true
  end
    return false
end

def over?(board)
  #if a draw, returns true
  if draw?(board) || full?(board)|| won?(board)
    return true
  end
  # if !position_taken(board)
  #   return false
  # end
end

def winner(board)
  win_combination = won?(board)
  if win_combination == nil
    return nil
  end
  if board[win_combination[0]] == "X"
    return "X"
  end
  if board[win_combination[0]] == "O"
    return "O"
  end
end

  #if O won, return O
  #if nil, return no winner
