#require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#defining the board

board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #top row horizontal
  [3,4,5], #middle row horizontal
  [6,7,8], #bottom row horizontal
  [0,3,6], #left row vertical
  [1,4,7], #center row vertical
  [2,5,8], #right row vertical
  [0,4,8], #left to right diaganl
  [2,4,6] #right to left diaganal
]

#check if someone won or lost and return false if someone tied or had a draw

def won?(board)
    WIN_COMBINATIONS.any? do | win_combination |
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
#binding.pry

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end
end

def full?(board)
  board.all? do | check_for_draw |
    check_for_draw == "X" || check_for_draw == "O"
  end
end

def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  draw?(board) || won?(board)
end


def winner(board)
  if win_combo = won?(board)
    board_index = win_combo[0]
    postion_on_board = board[board_index]
    return postion_on_board
  end
end
