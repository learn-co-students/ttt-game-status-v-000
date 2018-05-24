# Helper Method
#require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8],
[0,3,6], [1,4,7], [2,5,8],
[0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_index|
    if board[win_index[0]] == "X" && board[win_index[1]] == "X" && board[win_index[2]] == "X"
      return win_index
    elsif board[win_index[0]] == "O" && board[win_index[1]] == "O" && board[win_index[2]] == "O"
      return win_index
    end
  end
  false
end

#check every space and if every space is taken, return true
#if not every space is taken, return false
def full?(board)
  board.each do |space|
    if space == "X" || space == "O"
    else
      return false
    end
  end
  true
end

#check if won?(board) is false and full?(board) is true, return true
#check if won?(board) is false and full?(board) is false, return false
#check if won?(board) is true, return false
def draw?(board)
  if !won?(board) && !full?(board)
  elsif won?(board)
  else !won?(board) && full?(board)
    return true
  end
end

#if won?(board) or draw?(board) or full?(board) are true
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

#if won?(board) is true and equal to "X" return "X"
#if won?(board) is true and equal to "O" return "O"
#if !won?(board) return nil
def winner(board)
  if won?(board).class == Array
    won?(board).each do |winner|
      if board[winner[0]] == "X" || board[winner[0]] == "O"
        return board[winner[0]]
      end
    end
  end
end


#elsif board[winner[0]] == "O"
  #return "O"
#end
  #won?(board).each do |winner|
  #if won?(board)
#binding.pry
    #return
  #end
#end
