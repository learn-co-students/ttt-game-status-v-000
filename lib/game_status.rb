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
  WIN_COMBINATIONS.each do |combo|
    if (board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && board[combo[0]] != " " && board[combo[0]] != "" && !board[combo[0]].nil?)
      return combo
      break
    end
  end
  return false
end

def full?(board)
  if !(won?(board))
    board.each do |position|
      if (position != "O" && position != "X" )
        return false
      end
    end
  end
  return true
end

def draw?(board)
  if !(won?(board)) && !full?(board)
    return false
  elsif !(won?board) && full?(board)
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
   winner = won?(board)
   if winner != false
     return board[winner[0]]
   else
     return nil
   end
end
