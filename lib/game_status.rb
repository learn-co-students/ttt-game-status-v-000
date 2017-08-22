
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
WIN_COMBINATIONS = [
  [0, 1, 2], #["", "", "", "", "" ,"" ,"" ,"" ,""]
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
def won?(board) #returns to us a win_combination if the board is won
  WIN_COMBINATIONS.each do |win_combo| #first loop, win_combo = [0, 1, 2]
    #board = ["X", "", "O", "", "", "" ,"" ,"" ,"" ,""] board[0]
    first_spot = board[win_combo[0]]
    second_spot = board[win_combo[1]]
    third_spot = board[win_combo[2]]

    if first_spot == "X" && second_spot == "X" && third_spot == "X"
      return win_combo
    elsif first_spot == "O" && second_spot == "O" && third_spot == "O"
      return win_combo
    end
  end #end of each loop
  return false
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) && !full?(board)
    return true
  elsif draw?(board) == true
    return true
  elsif full?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
