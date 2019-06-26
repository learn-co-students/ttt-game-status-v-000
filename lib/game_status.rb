require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Right diagonal
  [2,4,6],  # Left diagonal
  ]
  
  def won?(board)
    WIN_COMBINATIONS.find do |combination|
      combination.all? { |index| position_taken?(board, index)
      } && board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]
    end
  end
  
  def full?(board)
    board.all? do |element|
      !(element.nil? || element == " ")
    end
  end
  
  def draw?(board)
    !won?(board) && full?(board) ? true : false
  end
  
  def over?(board)
    won?(board) || draw?(board) || full?(board)
  end
  
  def winner(board)
    combination = won?(board)
    combination ? board[combination[0]] : nil
  end