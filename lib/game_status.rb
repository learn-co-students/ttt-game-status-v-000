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
  ];

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    index1 = combo[0]
    index2 = combo[1]
    index3 = combo[2]

    if board[index1] == "X" && board[index2] == "X" && board[index3] == "X"
      return combo
    elsif board[index1] == "O" && board[index2] == "O" && board[index3] == "O"
      return combo
    end
  end
  return false
end

def full?(board)
  board.all? { |item| item != " " }
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif won?(board)
    return false
  elsif !won?(board) && !full?(board)
    return false
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
  combo = won?(board)
  if combo
    index = [combo][0][0]
    board[index]
  else
    return nil
  end
end
