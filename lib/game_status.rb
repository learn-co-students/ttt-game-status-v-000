#board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  #diagonal top left -> bottom right
  [0,4,8],
  #diagonal top right -> bottom left
  [2,4,6]
  ]

  def won?(board)
    WIN_COMBINATIONS.detect do | win_combination |
      
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      
      board[win_index_1] == board[win_index_2] &&
      board[win_index_2] == board[win_index_3] &&
      board[win_index_1] != " "
      
    end
  end
  
  
  def full?(board)
    board.none? { |position| position == " " }
  end
  
  
  def draw?(board)
    full?(board) && !won?(board)
  end
  
  
  def over?(board)
    won?(board) || draw?(board)
  end
  
  
  def winner(board)
    if win_combination = won?(board)
    winning_location = win_combination[0]
    board[winning_location]
    else
      nil
    end
  end
  
  
  
  
  