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
  count = 0;
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      count += 1;
      return combo;
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      count += 1;
      return combo;
    end
  end
  if count == 0
    return false;
  end
end


def full?(board)
  count = 0;
  board.each do |index|
    if index == "X" || index == "O"
      count += 1;
    end
  end
    if count == 9
      return true;
    else
      return false;
    end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false;
  end
end

def over?(board)
  if full?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if (draw?(board) || !full?(board)) && !won?(board)
     return nil
   elsif (board[won?(board)[0]] == "X")
     return "X"
   elsif (board[won?(board)[0]] == "O")
     return "O"
   end
 end
