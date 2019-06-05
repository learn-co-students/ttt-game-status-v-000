require 'pry'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
input = " "

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def input_to_index(board)
  index = "#{input}".to_i - 1
  return index
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [0, 3, 6], # First column
  [0, 4, 8], # Diagonal top left-to-right
  [1, 4, 7], # Middle column
  [2, 5, 8], # Diagonal top right-to-left
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [2, 4, 6]  # Right column
  ]

def won?(board) # how did player win?
  won = false
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X" 
      return won = win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return won = win_combination
    end
  end
  return won
end

def full?(board) #is the board full?
  board.all? do |board_index|
    board_index == "X" || board_index == "O"
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
 winner = nil
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X" 
      return "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O" 
      return "O"
    end
  end
  return winner
end