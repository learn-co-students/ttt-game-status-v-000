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

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination # return the win_combination indexes that won.
  else
    false
  end
end

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [3,4,5]
  # grab each index from the win_combination that composes a win.
  win_index_4 = win_combination[3]
  win_index_5 = win_combination[4]
  win_index_6 = win_combination[5]

  position_4 = board[win_index_3] # load the value of the board at win_index_4
  position_5 = board[win_index_4] # load the value of the board at win_index_5
  position_6 = board[win_index_5] # load the value of the board at win_index_6

  if position_4 == "X" && position_5 == "X" && position_6 == "X" || position_4 == "O" && position_5 == "O" && position_6 == "O"
      return win_combination # return the win_combination indexes that won.
  else
    false
  end
end

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [6,7,8]
  # grab each index from the win_combination that composes a win.
  win_index_7 = win_combination[6]
  win_index_8 = win_combination[7]
  win_index_9 = win_combination[8]

  position_7 = board[win_index_6] # load the value of the board at win_index_7
  position_8 = board[win_index_7] # load the value of the board at win_index_8
  position_9 = board[win_index_8] # load the value of the board at win_index_9

  if position_6 == "X" && position_7 == "X" && position_8 == "X" || position_6 == "O" && position_7 == "O" && position_8 == "O"
      return win_combination # return the win_combination indexes that won.
  else
    false
  end
end

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [0,3,6]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_4 = win_combination[3]
  win_index_7 = win_combination[6]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_4 = board[win_index_4] # load the value of the board at win_index_4
  position_7 = board[win_index_7] # load the value of the board at win_index_7

  if position_1 == "X" && position_4 == "X" && position_7 == "X" || position_1 == "O" && position_4 == "O" && position_7 == "O"
      return win_combination # return the win_combination indexes that won.
  else
    false
  end
end

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [1,4,7]
  # grab each index from the win_combination that composes a win.
  win_index_2 = win_combination[1]
  win_index_5 = win_combination[4]
  win_index_8 = win_combination[7]

  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_5 = board[win_index_5] # load the value of the board at win_index_5
  position_8 = board[win_index_8] # load the value of the board at win_index_8

  if position_2 == "X" && position_5 == "X" && position_8 == "X" || position_2 == "O" && position_5 == "O" && position_8 == "O"
      return win_combination # return the win_combination indexes that won.
  else
    false
  end
end

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [2,5,8]
  # grab each index from the win_combination that composes a win.
  win_index_3 = win_combination[2]
  win_index_6 = win_combination[5]
  win_index_9 = win_combination[8]

  position_3 = board[win_index_3] # load the value of the board at win_index_3
  position_6 = board[win_index_6] # load the value of the board at win_index_6
  position_9 = board[win_index_9] # load the value of the board at win_index_9

  if position_3 == "X" && position_6 == "X" && position_9 == "X" || position_3 == "O" && position_6 == "O" && position_9 == "O"
      return win_combination # return the win_combination indexes that won.
    else
    false
  end
end

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [0,4,8]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_5 = win_combination[4]
  win_index_9 = win_combination[8]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_5 = board[win_index_5] # load the value of the board at win_index_5
  position_9 = board[win_index_9] # load the value of the board at win_index_9

  if position_1 == "X" && position_5 == "X" && position_9 == "X" || position_1 == "O" && position_5 == "O" && position_9 == "O"
      return win_combination # return the win_combination indexes that won.
    else
    false
  end
end

#won method
def won?(board)
# win_combination is a 3 element array of indexes that compose a win, [2,4,6]
  # grab each index from the win_combination that composes a win.
  win_index_3 = win_combination[2]
  win_index_5 = win_combination[4]
  win_index_7 = win_combination[6]

  position_3 = board[win_index_3] # load the value of the board at win_index_3
  position_5 = board[win_index_5] # load the value of the board at win_index_5
  position_7 = board[win_index_7] # load the value of the board at win_index_7

  if position_3 == "X" && position_5 == "X" && position_7 == "X" || position_3 == "O" && position_5 == "O" && position_7 == "O"
      return win_combination # return the win_combination indexes that won.
      else
    false
  end
end

#full? method
def full?(board)
!board.include?(" ")
  end

#draw? method
def draw(board)
  board(won?) && board(full?)
    true
  elsif board !(won?) && board !(full) || board(won?)  
    false
  end
end

#over? method
def over?(board)
  if board = won? || board = draw? || board = full?
    true
  else
    false
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

#won method
#def won?(board)
  #if board(WIN_COMBINATIONS)
    #true
    #return win_combination
  #else
    #false
  #end
#end

#won method
#def won?(board)
#WIN_COMBINATIONS.each{|win_index|}
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
def won(board)
  WIN_COMBINATIONS.each do |board|
    if WIN_COMBINATIONS.any?(board)
      return
      win_combintation
    elsif WIN_COMBINATIONS.none?(board)
      false
    end
  end
end

#won method
def won?(board)
board(WIN_COMBINATIONS)[win_index_1]
board(WIN_COMBINATIONS)[win_index_2]
board(WIN_COMBINATIONS)[win_index_3]
board(WIN_COMBINATIONS)[win_index_4]
board(WIN_COMBINATIONS)[win_index_5]
board(WIN_COMBINATIONS)[win_index_6]
board(WIN_COMBINATIONS)[win_index_7]
board(WIN_COMBINATIONS)[win_index_8]
  if board.any?WIN_COMBINATIONS
    true
    return
    win_combination
  elsif board.none?WIN_COMBINATIONS
    false
  end
end
