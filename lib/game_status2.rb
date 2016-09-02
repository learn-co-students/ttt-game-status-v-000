require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row, #had extra comma&deleted comma, #add comma to delineate element of array WIN_COMBINATIONS
  [3,4,5],  # Middle row, #add comma to delineate element of array WIN_COMBINATIONS
  [6,7,8],  # last row#add comma to delineate element of array WIN_COMBINATIONS
  [0,3,6], #first columns#add comma to delineate element of array WIN_COMBINATIONS
  [1,4,7],  #second columns#add comma to delineate element of array WIN_COMBINATIONS
  [2,5,8],  # third columns#add comma to delineate element of array WIN_COMBINATIONS
  [0,4,8],  #diagnoal from nw to se#add comma to delineate element of array WIN_COMBINATIONS
  [2,4,6],  #diagnoal from ne to sw#add comma to delineate element of array WIN_COMBINATIONS
  # ETC, an array for each win combination#add comma to delineate element of array WIN_COMBINATIONS
]
#ID position of the board from 0 to 8
#position_combo = [
  #board[0,1,2],
  #board[3,4,5],
  #board[6,7,8],
  #board[0,3,6],
  #board[1,4,7],
  #board[2,5,8],
  #board[0,4,8],
  #board[2,4,6],
#]
#for each win_combination in WIN_COMBINATIONS
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  #win_index_1 = win_combination[0]
  #win_index_2 = win_combination[1]
  #win_index_3 = win_combination[2]

  # position_1 = board[win_index_1] # load the value of the board at win_index_1
  #position_2 = board[win_index_2] # load the value of the board at win_index_2
  #position_3 = board[win_index_3] # load the value of the board at win_index_3
  #if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #  return win_combination # return the win_combination indexes that won.
  #else
  #  false
  #end
def won? (board)
  WIN_COMBINATIONS.each do |win| #|win,position|
    #iteratiing through the first win combination array
    #win = WIN_COMBINATIONS[0] #missed win = to reference win argument,flatiron indicated
    #that i'm overwriting the win variable here
    win_index_1 = WIN_COMBINATIONS[0][0]#chain method # [0,0] = 1st time
    win_index_2 = WIN_COMBINATIONS[0][1]
    win_index_3 = WIN_COMBINATIONS[0][2]
    #position = position_combo[0]
    # use comparison == instead of = # changed to = after syntax error, unexpected == message
    # noticed WIN_COMBINATIONS[0] refers to 0,1,2 NOT 0
    #win = win_index_2 = WIN_COMBINATIONS[1] #missed array matching case 1stX.
    #win = win_index_3 = WIN_COMBINATIONS[2]
    position_1 = board[win_index_1] # load the value of the board at win_index_1, no implicit arry conversion to integer = + .to_i @ win_index
    #, failed #add .to_i to position_1, failed for error msg undefined local variable 'position_1', #add .to_i to board[win_index_1].to_i
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
    #position = position_combo[0]
    #binding.pry
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
         return WIN_COMBINATIONS #return the win_combination indexes that won.
        else
            false
    end
                    end
  #end
#end
end
