

# Define your WIN_COMBINATIONS constant
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
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [6,4,2],
  [0,4,8]
]

def won? (board)
  WIN_COMBINATIONS.find do |w|

    win_index_1 = w[0]
    win_index_2 = w[1]
    win_index_3 = w[2]
    board[win_index_1] == board[win_index_2] && board[win_index_2] == board[win_index_3] &&  position_taken?(board, win_index_1)
  end
end

def full?(board)
  board.all? do |token|
   token == "X" || token == "O"
    end
  end


  def draw?(board)
    full?(board) && !won?(board)
  end

  def over? (board)
    if draw?(board)
      true
    elsif won?(board)
      true
    else
      false
      end
end


def winner (board)
  if won?(board)
    board[won?(board)[0]]
    #binding.pry
end
end
