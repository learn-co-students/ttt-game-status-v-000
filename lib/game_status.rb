# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #Top Row
  [3, 4, 5], # Middle Row
  [6, 7, 8], #Bottom Row
  [0, 4, 8], #Diagonal L
  [2, 4, 6], #Diagonal R
  [0, 3, 6], #Down L
  [1, 4, 7], #Down M
  [2, 5, 8] #Down R
]


def won?(board)
  if WIN_COMBINATIONS
    true
  else
    false
  end
end


def full?(board)
 if draw?(board)
   return true
 else
   false
 end
end



def won?(board)
  WIN_COMBINATIONS.each do |arr|
    arr
  end


end


def won?
  WIN_COMBINATIONS.each do |arr|
    board.each do |mark|
      if arr[i] == mark[i]
        return arr
    else
      return false
    end
    end
  end
end

for each win_combination in WIN_COMBINATIONS
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  else
    false
  end
end
=end

# #for each win_combination in WIN_COMBINATIONS
#   # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
#   # grab each index from the win_combination that composes a win.
#   win_index_1 = win_combination[0]
#   win_index_2 = win_combination[1]
#   win_index_3 = win_combination[2]
#
#   position_1 = board[win_index_1] # load the value of the board at win_index_1
#   position_2 = board[win_index_2] # load the value of the board at win_index_2
#   position_3 = board[win_index_3] # load the value of the board at win_index_3

def won?(board)
  WIN_COMBINATIONS.detect do |arr|

  end
end

    # check if win combo is on board
    #   look at board at  first index position -> x o empty
    #   see if it is the same at 2nd index position
    #   see if it is the same at 3rd index position
    #   check if the position is takem
    #     if yes, return arr





def draw?(board)

end

def over?(board)

end

def winner

end
