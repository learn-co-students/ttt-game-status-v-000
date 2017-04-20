# Helper Method
require "pry"
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
WIN_COMBINATIONS.detect do |win_combination|

board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])
#binding.pry
#  win_combination.select do |win_index|
  #  top_row_win_1 = win_index[0][0]
  #  top_row_win_2 = win_index[0][1]
  #  top_row_win_3 = win_index[0][2]
  #  middle_row_win_1 = win_index[1][0]

  #  if board[top_row_win_1] == "X" && board[top_row_win_2] == "X" && board[top_row_win_3] == "X"
  #    return win_combination[0]
   #
  #  else
  #    false
  #  end
  end
end


def full?(board)
  #board.all? do||
end


def draw?(board)

end



def over?(board)

end


def winner

end


#def WIN_COMBINATIONS(board)
#  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
#    "X won in the top row"
#  end
