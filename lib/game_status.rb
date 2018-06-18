require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left-down row
  [1, 4, 7], #middle-down row
  [2, 5, 8], #right-down row
  [0, 4, 8], #left-diagonal row
  [2, 4, 6]  #right - diaganal row
  ]
 
def won?(board)
  WIN_COMBINATIONS.detect do |array|
      (board[array[0]] == "X"  && board[array[1]] == "X" && board[array[2]] == "X")  || ( board[array[0]] == "O"  && board[array[1]] == "O" && board[array[2]] == "O")
  end
end

def full?(board)
  WIN_COMBINATIONS.detect do |array|
     (board[array[0]] == "X"  && board[array[1]] == "O" && board[array[2]] == "X") || (board[array[0]] == " "  && board[array[1]] == "O" && board[array[2]] == " ") 
    end
end 

def draw?(board)
  WIN_COMBINATIONS.each do |array|
     if board[array[0]] == "X"  && board[array[1]] == "X" && board[array[2]] == "X" 
       return false
     end
   end
end

def over?(board)
  WIN_COMBINATIONS.any? do |array|
    (board[array[0]] == "X"  && board[array[1]] == "O" && board[array[2]] == "X") 
  end
end  
 
 def winner(board)
   WIN_COMBINATIONS.detect do |array|
  if board[array[0]] == "X"  && board[array[1]] == "X" && board[array[2]] == "X"
       return "X" 
    elsif board[array[0]] == "O"  && board[array[1]] == "O" && board[array[2]] == "O"
       return "O" 
     end
  end
end
    




