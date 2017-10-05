# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top_row_win
  [3, 4, 5], #middle win
  [6, 7, 8], #bottom win
  [0, 3, 6], #left side win
  [1, 4, 7], #down middle win
  [2, 5, 8], #right side win
  [0, 4, 8], #left-to-right cross
  [2, 4, 6] #right-to-left cross
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if combo.all?{|i| board[i] == "X"} || combo.all?{|i| board[i] == "O"}
      return combo
    elsif board.all?{|i| i == " " || i = nil}
     return false
    end
  end
 if board.all?{|i| i == "X" || i == "O"}
 return false
 end
end

def full?(board)
  if board.all?{|i| i == "X" || i == "O"}
   return true
 end
end

def draw?(board)
    if won?(board) || !full?(board)
      false
    else
      true
    end
  end

  def over?(board)
      if won?(board) || draw?(board) || full?(board)
        true
      else
        false
      end
  end

  def winner(board)
    if won?(board) != nil
      winCombo = won?(board)
      if board[winCombo[0]] == "X"
      "X"
      elsif board[winCombo[0]] == "O"
      "O"
      end
    else
      nil
    end
  end
