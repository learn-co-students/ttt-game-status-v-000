# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)

WIN_COMBINATIONS.each do |win_combo|
   win_index_1 = win_combo[0]
   win_index_2 = win_combo[1]
   win_index_3 = win_combo[2]

   position_1 = board[win_index_1]
   position_2 = board[win_index_2]
   position_3 = board[win_index_3]

   if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
   elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
   end
 end
  return false
end

def full?(board)
  board.each do |i|
    if i == "" || i == " "
      return false
    end
  end
  return true
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) == true
    return true
  elsif won?(board) != false
    return true
  elsif full?(board) == true
    return true
  elsif won?(board) == true && full?(board) == false
    return true
  else
    return false
  end
end

def winner(board)
  #winning_array = Array.new(3)

  if won?(board) == false
    return nil
  else
    winning_array = won?(board)
    index = winning_array[0]
    if board[winning_array[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end




# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
