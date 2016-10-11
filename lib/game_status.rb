# Helper Method

#   !(board[index].nil? || board[index] == " ")
# end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left column
  [1, 4, 7], # Middle column
  [2, 5, 8], # Right column
  [2, 4, 6], # Diagonal 1
  [0, 4, 8]  # Diagonal 2
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0] #n[0] = 2, so win_index_1 = 2
    win_index_2 = win_combination[1] #n[1] = 4, so win_index_2 = 4
    win_index_3 = win_combination[2] #n[2] = 6, so win_index_3 = 6
#board = ["", "", "X", "", "X", "", "X", "", ""]
    position_1 = board[win_index_1] # load the value of the board at win_index_1 = X
    position_2 = board[win_index_2] # load the value of the board at win_index_2 = X
    position_3 = board[win_index_3] # load the value of the board at win_index_3 = X

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination[0] # return the win_combination indexes that won.
    else
      false
    end
  end
end

# for each win_combination in WIN_COMBINATIONS #need to write a loop win_combination = [0,1,2]
#   # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
#   # grab each index from the win_combination that composes a win.
#   win_index_1 = win_combination[0] #win_combination[0] = 0, so win_index_1 = 0
#   win_index_2 = win_combination[1] #win_combination[1] = 1, so win_index_2 = 1
#   win_index_3 = win_combination[2] #win_combination[2] = 2, so win_index_3 = 2
#
#   position_1 = board[0] # load the value of the board at win_index_1 = X
#   position_2 = board[1] # load the value of the board at win_index_2 = X
#   position_3 = board[2] # load the value of the board at win_index_3 = X
#
#   if position_1 == "X" && position_2 == "X" && position_3 == "X"
#     return win_combination # return the win_combination indexes that won.
#   else
#     false
#   end
#
#
#
# if board[WIN_COMBINATIONS[0]] == "X" && board[WIN_COMBINATIONS[1]] == "X" && board[WIN_COMBINATIONS[2]] == "X"
#   "X won in the top row"
#   puts WIN_COMBINATIONS[0]
# end
