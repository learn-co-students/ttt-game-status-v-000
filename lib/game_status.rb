require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # top left to bottom right diagonal
  [2,4,6] # bottom left to top right diagnonal
]

def won?(board)
  #=>no: return false/nil
  #=>yes: return [] of winning positions
  array = nil
  WIN_COMBINATIONS.each { |set|

    win_index_1 = set[0]
    win_index_2 = set[1]
    win_index_3 = set[2]

    if position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3)
      char_1 = board[win_index_1]
      char_2 = board[win_index_2]
      char_3 = board[win_index_3]
      char_array = [char_1, char_2, char_3]
      all_x = char_array.all? { |character|
        character == "X"
      }
      all_o = char_array.all? { |character|
        character == "O"
      }
      if all_x || all_o
        array = [win_index_1, win_index_2, win_index_3]
      end
    end
  }
  array
end

def full?(board)
  #=> true if there are no nils or " "
  #=> false if there are nils or " "
  board.none?{|i| i == " " }
end

def draw?(board)
  #=> true if board has not been won and is full
  #=> false if board not won and board is not full
  #=> false if board won
  if won?(board)
    false
  elsif full?(board)
    true
  else
    false
  end
end

def over?(board)
  #=> true if board won, is draw, or is full
  (won?(board) || full?(board) || draw?(board)) ? true : false
end

def winner(board)
  if(won?(board).class == Array)
    board[won?(board)[0]]
  end
end
