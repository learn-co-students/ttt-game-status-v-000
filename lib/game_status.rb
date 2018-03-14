# Helper Method

require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #top row 
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row 
  [0, 3, 6], #first column 
  [1, 4, 7], #second column 
  [2, 5, 8], #third column
  [0, 4, 8], #diagonal
  [2, 4, 6] #other diagonal
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def won?(board)
    WIN_COMBINATIONS.each do |combos|
      position_1 = board[combos[0]]
      position_2 = board[combos[1]]
      position_3 = board[combos[2]]
      if ((position_1 == "X") && (position_2 == "X") && (position_3 == "X")) || ((position_1 == "O") && (position_2 == "O") && (position_3 == "O"))
        return combos
      end
    end
  nil 
end 

def full?(board)
 board.all? do |space|
  (space == "X") || (space == "O")
  end
end

def draw?(board)
  if !won?(board) && (full?(board) == true)
    return true
  else
    return false
  end
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  winning_combo = won?(board)
  if won?(board) 
    if
      board[winning_combo[0]] == "X"
        return "X"
    elsif 
      board[winning_combo[0]] == "O"
        return "O"
    else
      return nil 
    end 
  end 
end

