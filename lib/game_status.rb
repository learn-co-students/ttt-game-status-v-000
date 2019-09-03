# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8,],[0,4,8],[6,4,2]]

def won?(board)
  xArr = []
  oArr = []
  index = 0
  returnComb = []
  winBool = false

  board.each do |item|
    if item == "X"
      xArr << index
    elsif item == "O"
        oArr << index
    end
    index += 1
  end

  combIndex = 0
  WIN_COMBINATIONS.each do |winArr|
    if winArr.all? { |i| xArr.include?(i) }
      returnComb = WIN_COMBINATIONS[combIndex]
      break if returnComb != []
    elsif winArr.all? {|number| oArr.include?(number) }
      returnComb = WIN_COMBINATIONS[combIndex]
      break if returnComb != []
    else
      returnComb = nil
    end
    combIndex += 1
  end
  return returnComb
end

def full?(board)
  return board.all? { |i| i == "X" || i == "O"}
end

def draw?(board)
  return  won?(board)== nil && full?(board)== true ? true : false
end

def over?(board)
  return won?(board) || draw?(board)
end

def winner(board)
  if over?(board) && !draw?(board)
    i = won?(board)[0]
    return board[i]
  else
    nil
  end
end
