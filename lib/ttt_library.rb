#---------------------------------------------------
def display_board(board = [" "," "," "," "," "," "," "," "," "], board_type = 'Active')
  width = 3
  total_cells = 9

    board.each_index { |i|
      if board_type == 'Active'
      print " #{board[i]} "

      elsif board_type == 'Display'
      print " #{i} "

      else
      print " #{board[i]} "

      end


      if i+1 == total_cells
      print "\n"

      elsif (i+1) % width == 0
      print "\n-----------\n"

      elsif i+1 % width != 0 && i+1 != total_cells
      print "|"

      end
    }
end


#---------------------------------------------------
#input to index converts the input from string to integer
#and updates it from a "board index" to an array index (-1)
def input_to_index (move)
  #note that with #to_i, if there are no ints, it will eval
  #to zero and the method will return -1 as a result
return move.to_i - 1
end



#---------------------------------------------------
def move (board, position, char = "X")

board[position] = char
return board

end


#--------------------------------------------------------
#this method says whether or not the position on the board is filled w an X or O
# **note that our definition of filled is very narrow - the method only evaluates to
# true (e.g. position is taken) if there is an X or O at that index.
# Any other thing - "" or nil or 'G' will all evaluate to false

def position_taken? (board, index)

  if board[index] == 'X' || board[index] == 'O'
    return true
  else
  return false
  end

end



#--------------------------------------------------------
def valid_move? (board, index)

  spot_on_board = (index < 9 && index > -1)
  position_taken = position_taken?(board,index)
  return spot_on_board && !position_taken

end

#--------------------------------------------------------
def turn (board)

#gets move
puts "Please enter 1-9:"
current_move_index = input_to_index(gets.strip)

  #checks validity of move and if it passes, displays it, otherwise
  #re-prompts user to enter a valid move
  if valid_move?(board, current_move_index)
  move(board,current_move_index)
  display_board(board)
  puts "Gutsiest move I ever saw, Mav."

  else
    turn (board)
  end

end



#--------------------------------------------------------
def play (board)
  counter = 0
  while counter < 9
    turn (board)
    counter += 1
  end

end


#--------------------------------------------------------
def turn_count(board)
  total_turns = board.count("X") + board.count("O")
  return total_turns
end


#--------------------------------------------------------
def current_player (board)
  if  turn_count(board).even?
     return "X"
  elsif turn_count(board).odd?
    return "O"
  end
end
