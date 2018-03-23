# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
  ]

  def won?(board)
    WIN_COMBINATIONS.each do |wcombo|
      index1 = wcombo[0]
      index2 = wcombo[1]
      index3 = wcombo[2]
      token1 = board[index1]
      token2 = board[index2]
      token3 = board[index3]
        if token1 == "X" && token2 == "X" && token3 == "X"
          return wcombo
        elsif token1 == "O" && token2 == "O" && token3 == "O"
          return wcombo
        end
      end
      false
    end


def full?(board)
  board.all? do |n|
    if (n == "X" || n == "O")
      true
    else
      false
    end
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
    false
  end
end

def over?(board)
  if full?(board) == true || draw?(board) == true || won?(board) != false
    true
  else
    false
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |wcombo|
    index1 = wcombo[0]
    index2 = wcombo[1]
    index3 = wcombo[2]
    token1 = board[index1]
    token2 = board[index2]
    token3 = board[index3]
      if won?(board) == wcombo && token1 == "X"
        return token1
      elsif won?(board) == wcombo && token1 == "O"
        return token1
      else
      end
  end
  nil
end
