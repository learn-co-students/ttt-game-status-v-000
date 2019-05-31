# Helper Method
require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], 
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [0, 4, 8]
  ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |win_move|
      if board[win_move[0]] == "X" && board[win_move[1]] == "X" && board[win_move[2]]== "X"
        return win_move
      elsif board[win_move[0]] == "O" && board[win_move[1]] == "O" && board[win_move[2]] == "O"
        return win_move
      end
   end
   return false 
 end

  def full?(board)
     board.all?{|token| token == "X" || token == "O"}
  end
  
  def draw?(board)
    full?(board) && !won?(board)
  end
  
  def over?(board)
    full?(board) || won?(board)
  end
  
  def winner(board)
    if winning_move = won?(board)
      board[winning_move.first]
    end
  end
  
  
  
  
  