# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Diagonal top left to right
  [2,4,6]  #Diagonal top right to left
  
  ]

def won?(board)
  empty = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  winning_numbers = [] #store and return this
  index_array = [ 0, 1, 2, 3, 4, 5, 6, 7, 8]
  
=begin
  if empty == board || full?(board)
    return false
  else
    WIN_COMBINATIONS.each do |arr|
      arr.all? |num|
        if board[num] =="X" || board[num] =="O"
          winning_numbers = arr
        end #end for if statement nested
      end #end for enumeration
  end #end for if statement
  
  return winning_numbers
=end  
  
  #return array on line 47 would break out of the loop
  #or after the loop, put false because winner wasn't found
  #or use detect WIN_COMBINATIONS.detect
  #what goes in, what goes out
  
  
  WIN_COMBINATIONS.each do |array|
    if empty == board #|| #full?(board) #!position_taken?(board, index_array) 
      return false
    elsif array.all? { |value| board[value] =="X" } || array.all? { |value| board[value] =="O" }
      winning_numbers = array
      break
    else
      winning_numbers = nil
    end # end for If statements
    
  end # end for enumerations
  
  return winning_numbers #return this value


end #end for function won?

def full?(board)
 !board.detect { |x| x == " " }
 #if draw?(board) == true
  # return true
 #end
end

def draw?(board)

  if won?(board) #if won, return false
    return false
  elsif !won?(board) && !full?(board) #not won AND not full, return false
    return false
  elsif !won?(board) && full?(board) #not won AND full, return true
    return true
  end
  
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  elsif board.any? { |x| x == " " } && !won?(board)
    return false
  end
end


def winner(board)
  
  if won?(board)
    the_winning_letter = won?(board)
    if the_winning_letter.detect { |value| board[value] == "X" }
      return "X"
      elsif the_winning_letter.detect { |value| board[value] =="O" }
      return "O"
    end
  else
    nil
  end
  
=begin
  the_winning_letter = won?(board)
  if the_winning_letter.detect { |value| board[value] == "X" }
    return "X"
  elsif the_winning_letter.detect { |value| board[value] == "O" }
    return "O"
  elsif !won?(board)
    return nil
  end
=end
end
