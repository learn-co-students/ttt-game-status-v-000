# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8],
[0,3,6], [1,4,7], [2,5,8],
[2,4,6], [0,4,8]]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    index1 = combo[0]
    index2 = combo[1]
    index3 = combo[2]
    token1 = board[index1]
    token2 = board[index2]
    token3 = board[index3]
      if token1 == "X" && token2 == "X" && token3 == "X"
        return combo
      elsif token1 == "O" && token2 == "O" && token3 == "O"
        return combo
      end
  end
  false
end

def full?(board)
  board.all? do |position|
    position != " "
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  elsif
    full?(board) == false && won?(board) == false
  else
    false
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    true
  else
    false
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |combo|
    index1 = combo[0]
    index2 = combo[1]
    index3 = combo[2]
    token1 = board[index1]
    token2 = board[index2]
    token3 = board[index3]
      if won?(board) == combo && token1 == "X"
        return token1
      elsif won?(board) == combo && token1 == "O"
        return token1
      else
      end
  end
  nil
end
