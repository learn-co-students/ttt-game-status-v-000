require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    #Win Indicies
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    #elements in each position
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    #Check to make sure none are spaces
    position_not_taken = position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3)
    
    #Check to see if all 3 elements are the same and are not spaces.
    position_1 == position_2 && position_2 == position_3 && position_not_taken
    
  end
end

def full?(board)
  board.none? {|element| element == " "}
end

def draw?(board)
  won?(board).nil? && full?(board)
end

def over?(board)
  !won?(board).nil? || draw?(board) || full?(board)
end

def winner(board)
   if !won?(board).nil?
     board[won?(board)[0]]
   end
end
