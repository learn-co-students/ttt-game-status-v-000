# require_relative '../lib/game_status' # Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
def WIN_COMBINATIONS(board)
end

board=[" "," "," "," "," "," "," "," "]


WIN_COMBINATIONS =[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]

def won?(board)
  ### checking for falsey values while using won?(board) ###
  # ways you can't use won?(board) during a condition. won?(board) == false
  # ways you can use won?(board) during a condition. !won?(board) or you can say won?(board) == nil
  WIN_COMBINATIONS.detect do |win_combination|

    position_1 = board[win_combination[0]] # load the value of the board at win_index_1 if position_1= board[win_combination[0]] then I can replace all with just that
    position_2 = board[win_combination[1]] # load the value of the board at win_index_2
    position_3 = board[win_combination[2]] # load the value of the board at win_index_3

    position_1 ==  position_2 && position_2 == position_3  && position_1 != " "
  end
end

def full?(board)
  board.all? do |position|
    position =="X"||position=="O"
  end
end

def draw?(board)# returns false if there are any winning combinations
  if full?(board) && !won?(board)
      return true
  else
    return false
  end
end

def over?(board)
  if draw?(board)|| won?(board)|| full?(board)
    return true
  end
end

def winner(board)
  win = won?(board)
win ? board[win[0]] : nil
end
