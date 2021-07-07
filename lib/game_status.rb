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
  [0,4,8], #top-left to bottom-right diagonal
  [2,4,6]  #bottom-left to top-right diagonal
  ]
  def won?(board)
    WIN_COMBINATIONS.each do |win_combinations|
      index1 = win_combinations[0]
      index2 = win_combinations[1]
      index3 = win_combinations[2]
      
      board_spot1 = board[index1]
      board_spot2 = board[index2]
      board_spot3 = board[index3]
      
      if board_spot1 == "X" && board_spot2 == "X" && board_spot3 == "X"
        return win_combinations
      elsif board_spot1 == "O" && board_spot2 == "O" && board_spot3 == "O"
        return win_combinations
      else
        false
      end
    end
    return false
  end
  
  def full?(board)
    board.none? do |value|
      value == " "
    end
  end
  
  def draw?(board)
    if won?(board) || !full?(board)
      return false
    else
      return true
    end
  end
  
  def over?(board)
    if won?(board) || full?(board) || draw?(board)
      return true
    else
      return false
    end
  end
  
  def winner(board)
    if won?(board)
      return board[won?(board)[0]]
    else
      return nil
    end
  end