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
    WIN_COMBINATIONS.each do |combination|
      win = []
      combination.each do |index|
        win.push(board[index])
      end
      if win.all?{|e| e == "X"} || win.all?{|e| e == "O"}
        return combination
      end
    end
    return FALSE  
  end
  
  def full?(board)
    if board.any?{|e| e == " "}
      return FALSE
    else
      return TRUE
    end
  end
  
  def draw?(board)
    if won?(board) == FALSE && full?(board) == TRUE 
      return TRUE
    elsif won?(board) == FALSE && full?(board) == FALSE || won?(board) != FALSE
     return FALSE
   end
  end
  
  def over?(board)
    if won?(board) != FALSE || draw?(board) == TRUE || full?(board) == TRUE
      return TRUE
    else 
      return FALSE
    end
  end
  
  def winner(board)
    if won?(board) != FALSE
      win_combo = won?(board)
      return board[win_combo[0]]
    else
      return nil 
    end
  end