
board = [" "," "," "," "," "," "," "," "," "]
# Define your WIN_COMBINATIONS constant
require 'pry'
# Helper Method
WIN_COMBINATIONS = [[0,1,2],
                    [3,4,5],
                    [6,7,8],
                    [0,3,6],
                    [1,4,7],
                    [2,5,8],
                    [0,4,8],
                    [6,4,2]]

def won?(board)
  win_index_1 = WIN_COMBINATIONS[0]
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_3 = WIN_COMBINATIONS[2]
binding.pry
end
