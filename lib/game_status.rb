# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |arr|
    b_0 = board[arr[0]].strip
    b_1 = board[arr[1]].strip
    b_2 = board[arr[2]].strip
    
    if ((b_0 == b_1) && (b_0 == b_2)) && b_0 != ""
      return [arr[0], arr[1], arr[2]]
    end
  end
  false
end

def full?(board)
  count = 0
  board.each do |elem|
    e = elem.strip
    count += ((e.size == 0) ? 0 : 1)
  end
  count == 9
end

def draw?(board)
  w = won?(board)
  f = full?(board)
  
  if w
    return false
  elsif !w && !f
    return false
  elsif !w && f
    return true
  else
    return false
  end
  
end

def over?(board)
  w = won?(board)
  f = full?(board)
  d = draw?(board)
  
  w || f || d ? true : false
end

def winner(board)
  w = won?(board)
  
  if !w 
    return nil
  else
    return board[w[0]]
  end
  
end