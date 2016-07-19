# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row win
  [3,4,5],  # Middle row win
  [6,7,8],  # Bottom row win
  [0,3,6],  # Left vertical win
  [1,4,7],  # Middle vertical win
  [2,5,8],  # right vertical win
  [0,4,8],  # Left diagonal win
  [2,4,6] # right diagonal win
]
#full? method
def full?(board)
!board.include?(" ")
  end

#draw? method
def draw(board)
  !won?(board) && full?(board)
    true
  !won?(board) && !full(board) || won?(board)
    false
end

#over? method
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
    end
end

#winner? method
def winner(board)
  if board[WIN_COMBINATIONS] == "X"
    return "X"
  elsif board[WIN_COMBINATIONS] == "O"
    return "O"
    end
  end
end

#won method
#def won?(board)
  #if board(WIN_COMBINATIONS)
    #true
    #return win_combination
  #else
    #false
  #end
#end

won method
def won?(board)
WIN_COMBINATIONS.each{|win_index|}
win_index.all?{|index| board[index] == "X"} || win_index.all?{|index| board[index] == "O"}
  return win_combination
else
  false
end
end
  #win_index < WIN_COMBINATIONS.length
  #win_index = WIN_COMBINATIONS[win_combination[0...9]]
  #WIN_COMBINATIONS.all? { |win_index|
    #board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X" || board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"}
    #if WIN_COMBINATIONS.all? == true
     #return current_win_combination
   #else
     #return false
   #end
 #end

#won method
#def won?(board)
  #board.any?|position_1...position_9|WIN_COMBINATIONS
  #true
  #return win_combination
  #board.none?|position_1...position_9|WIN_COMBINATIONS
  #false
#end

#won method
#def won(board)
  #WIN_COMBINATIONS.each do |win_combintation|
    #if WIN_COMBINATIONS.any?(win_combintation)
    #  return
    #  win_combintation
    #elsif WIN_COMBINATIONS.none?(board)
    #  false
    #end
#  end
#end

#won method

#def won?(board)
#WIN_COMBINATIONS(board)[win_index_1]
#WIN_COMBINATIONS(board)[win_index_2]
#WIN_COMBINATIONS(board)[win_index_3]
#WIN_COMBINATIONS(board)[win_index_4]
#WIN_COMBINATIONS(board)[win_index_5]
#WIN_COMBINATIONS(board)[win_index_6]
#WIN_COMBINATIONS(board)[win_index_7]
#WIN_COMBINATIONS(board)[win_index_8]
  #if board.any?WIN_COMBINATIONS
    #true
    #return
    #win_combination
  #elsif board.none?WIN_COMBINATIONS
    #false
    #end
  #end

  #Def won(board)
    # Iterate over WIN_COMBINATIONS

  #WIN_COMBINATIONS.each do|board|

  # Check board if same token is in each index of winning combination
  #board.all?position=”X” || board.all?position=”O”
    #true
    #Return win_combination
  #Or

  #board.all?value=”X” || board.all?value=”O”
    #true
    #Return win_combination
  #Or

  #board.all?token=”X” || board.all?token=”O”
    #True
    #Return win_combination
  #Or

  #board.all?win_combination=”X” || board.all?win_combination=”O”
    #True
    #Return win_combination
  #Or

  #win_combination.all?position=”X” || win_combination.all?position=”O”

  		#True
  	  # Return win_combination

    #Else
  	#	False

  #WIN_COMBINATIONS.none?position=”X” || WIN_COMBINATIONS.none?position=”O”

  		#False/nil

  	#Else

  		#True
  #  end
#  end
#end





  #Def won?(board)
  #WIN_COMBINATIONS.all? do |board| == “X” || WIN_COMBINATIONS.all? do |board| == “O”
  #win_combination.all?token=”X”||win_combination.all?token=”O”




  #Def won?(board)
  #WIN_COMBINATIONS.all? do |board|
  #board.all?

  #Def won?(board)
  #board.all?token=”X”||”O”

  #def won?(board)
  #win_combination_1 = win_combination[0], win_combination[1], win_combination[2]
  #win_combination_2 = win_combination[3], win_combination[4], win_combination[5]
  #win_combination_3 = win_combination[6], win_combination[7], win_combination[8]
  #win_combination_4 = win_combination[0], win_combination[3], win_combination[6]
  #win_combination_5 = win_combination[1], win_combination[4], win_combination[7]
  #win_combination_6 = win_combination[2], win_combination[5], win_combination[8]
  #win_combination_7 = win_combination[0], win_combination[4], win_combination[8]
  #win_combination_8 = win_combination[2], win_combination[4], win_combination[6]

  #If win_combination_i.all?do("X")
  #  true
  #elsif win_combination_i.all?do("O")
  #  true
#elsif win_combination_i.none?do("X")
#    false
#  elsif win_combination_i.cone?do("O")
#    false
#     end
#  	end
#  end
#  end

# won method
#def won?(board)
  #if WIN_COMBINATIONS(board) == true
  3return win_combination
#else
  #false || nil
#end
#won method
#def won?(Board)
  #win_index_1 = win_combination[0]
  #win_index_2 = win_combination[1]
  #win_index_3 = win_combination[2]
  #win_index_4 = win_combination[3]
  #win_index_5 = win_combination[4]
  #win_index_6 = win_combination[5]
  #win_index_7 = win_combination[6]
  #win_index_8 = win_combination[7]
  #win_index_9 = win_combination[8]
 #win_index_1 = win_combination[0]
  #win_index_4 = win_combination[3]
  #win_index_7 = win_combination[6]
  #win_index_2 = win_combination[1]
  #win_index_5 = win_combination[4]
  #win_index_8 = win_combination[7]
  #win_index_3 = win_combination[2]
  #win_index_6 = win_combination[5]
  #win_index_9 = win_combination[8]
#win_index_1 = win_combination[0]
  #win_index_5 = win_combination[4]
  #win_index_9 = win_combination[8]
#win_index_3 = win_combination[2]
  #win_index_5 = win_combination[4]
  #win_index_7 = win_combination[6]



  #position_1 = board[win_index_1] # load the value of the board at win_index_1
  #position_2 = board[win_index_2] # load the value of the board at win_index_2
  #position_3 = board[win_index_3] # load the value of the board at win_index_3
  #position_4 = board[win_index_3] # load the value of the board at win_index_4
  #position_5 = board[win_index_4] # load the value of the board at win_index_5
  #position_6 = board[win_index_5] # load the value of the board at win_index_6
  #position_7 = board[win_index_6] # load the value of the board at win_index_7
  #position_8 = board[win_index_7] # load the value of the board at win_index_8
  #position_9 = board[win_index_8] # load the value of the board at win_index_9
  #position_1 = board[win_index_1] # load the value of the board at win_index_1
  #position_4 = board[win_index_4] # load the value of the board at win_index_4
  #position_7 = board[win_index_7] # load the value of the board at win_index_7
  #position_2 = board[win_index_2] # load the value of the board at win_index_2
  #position_5 = board[win_index_5] # load the value of the board at win_index_5
  #position_8 = board[win_index_8] # load the value of the board at win_index_8
  #position_3 = board[win_index_3] # load the value of the board at win_index_3
  #position_6 = board[win_index_6] # load the value of the board at win_index_6
  #position_9 = board[win_index_9] # load the value of the board at win_index_9
  #position_1 = board[win_index_1] # load the value of the board at win_index_1
  #position_5 = board[win_index_5] # load the value of the board at win_index_5
  #position_9 = board[win_index_9] # load the value of the board at win_index_9
#position_3 = board[win_index_3] # load the value of the board at win_index_3
  #position_5 = board[win_index_5] # load the value of the board at win_index_5
  #position_7 = board[win_index_7] # load the value of the board at win_index_7

  #if position_1 == "X" && position_2 == "X" && position_3 == "X"
    #return win_combination # return the win_combination indexes that won.
  #elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    #return win_combination # return the win_combination indexes that won.
 #elsif position_4 == "X" && position_5 == "X" && position_6 == "X"
    #return win_combination # return the win_combination indexes that won.
  #elsif position_4 == "O" && position_5 == "O" && position_6 == "O"
      #return win_combination # return the win_combination indexes that won.
#elsif position_7 == "X" && position_8 == "X" && position_9 == "X"
  #  return win_combination # return the win_combination indexes that won.
  #elsif position_7 == "O" && position_8 == "O" && position_9 == "O"
      #return win_combination # return the win_combination indexes that won.
#elsif position_1 == "X" && position_4 == "X" && position_7 == "X"
    #return win_combination # return the win_combination indexes that won.
  #elsif position_1 == "O" && position_4 == "O" && position_7 == "O"
      #return win_combination # return the win_combination indexes that won.
#elsif position_2 == "X" && position_5 == "X" && position_8 == "X"
    #return win_combination # return the win_combination indexes that won.
  #elsif position_2 == "O" && position_5 == "O" && position_8 == "O"
      #return win_combination # return the win_combination indexes that won.
#elsif position_3 == "X" && position_6 == "X" && position_9 == "X"
    #return win_combination # return the win_combination indexes that won.
  #elsif position_3 == "O" && position_6 == "O" && position_9 == "O"
      #return win_combination # return the win_combination indexes that won.
 #elsif position_1 == "X" && position_5 == "X" && position_9 == "X"
    #return win_combination # return the win_combination indexes that won.
  #elsif position_1 == "O" && position_5 == "O" && position_9 == "O"
      #return win_combination # return the win_combination indexes that won.
#elsif position_3 == "X" && position_5 == "X" && position_7 == "X"
    #return win_combination # return the win_combination indexes that won.
  #elsif position_3 == "O" && position_5 == "O" && position_7 == "O"
      #return win_combination # return the win_combination indexes that won.


  #else
    #false
 	#end
#end
	#end
#end
#end
#end
#end
#end
#end
#end
#end
#end
#end
#end
#end
#end
