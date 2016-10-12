# Helper Method


WIN_COMBINATIONS = [
 [0, 1, 2],
 [0, 3, 6],
 [0, 4, 8],
 [1, 4, 7],
 [2, 4, 6],
 [2, 5, 8],
 [3, 4, 5],
 [6, 7, 8]
]

#def display_board(cell)
#  puts " #x | #x | #x "
#  puts "-----------"
#  puts " #x| #o | #x "
#  puts "-----------"
#  puts " #o |   | #o "
#end

def won?(board)
  WIN_COMBINATIONS.detect do |pos_nes|
    #board = ["", "", "X", "", "X", "", "X", "", ""]
    win_index_1 = board[pos_nes[0]] #pos_nes[0] = 2, so win_index_1 = 2
    win_index_2 = board[pos_nes[1]] #pos_nes[1] = 4, so win_index_2 = 4
    win_index_3 = board[pos_nes[2]] #pos_nes[2] = 6, so win_index_3 = 6

  #  position_1 = board[pos_nes] # load the value of the board at win_index_1 = X
  #  position_2 = board[pos_nes] # load the value of the board at win_index_2 = X
  #  position_3 = board[pos_nes] # load the value of the board at win_index_3 = X

    if win_index_1 == "X" && win_index_2 == "X" && win_index_3 == "X"
      return pos_nes # return the win_combination indexes that won.
    else
      false
    end
  end
end
