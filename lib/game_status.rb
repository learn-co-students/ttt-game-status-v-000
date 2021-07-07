# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]
def won?(board)
  WIN_COMBINATIONS.detect do |combo| board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
  end
end

def full?(board)
  if board.all? {|i| i == "X" || i == "O"}
    return true
  else
    false
  end
end

def draw?(board)
  WIN_COMBINATIONS.detect do |combo|
  if won?(board)
    return false
  elsif board.detect{|b| b == " "}
    return false
  else
    true
  end
end
end

def over?(board)
  if draw?(board)
    return true
  elsif full?(board)
    return true
  elsif won?(board)
    return true
  else
    false
  end
end

def winner(board)
  WIN_COMBINATIONS.detect do |combo|
    position_1 = combo[0]
    position_2 = combo[1]
    position_3 = combo[2]

    index = board[position_1]
    index_2 = board[position_2]
    index_3 = board[position_3]
    if index == "X" && index == index_2 && index_2 == index_3
      return "X"
    elsif index == "O" && index == index_2 && index_2 == index_3
      return "O"
    else
      nil
    end
  end
end
