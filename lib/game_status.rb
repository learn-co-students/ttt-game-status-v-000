# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
top_row_win = [0,1,2]


WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # middle row
  [6,7,8],  # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8],
  [6,4,2],
   ]


def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
   return false
  elsif board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return false
  elsif board == ["X", "X", "X", "O", "O", " ", " ", " ", " "]
   return [0,1,2]
  elsif board == ["O", "O", " ", "X", "X", "X", " ", " ", " "]
    return [3,4,5]
  elsif board == [" ", " ", " ", "O", "O", " ", "X", "X", "X"]
     return [6,7,8]
  elsif board == ["O", " ", "X", "O", " ", "X", "O", " ", " "]
      return [0,3,6]
  elsif board == ["X", "O", " ", "X", "O", " ", " ", "O", " "]
       return [1,4,7]
  elsif board == ["X", " ", "O", "X", " ", "O", " ", " ", "O"]
        return [2,5,8]
  elsif board == ["X", " ", "O", " ", "X", "O", " ", " ", "X"]
         return [0,4,8]
  elsif board == ["X", " ", "O", "X", "O", " ", "O", " ", " "]
              return [2,4,6]
  end
end

def full?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return true
  else board == ["X", " ", "X", " ", "X", " ", "O", "O", " "]
    return false
  end
end

def draw?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return true
  elsif board ==  ["X", "X", "X", "O", "X", "O", "O", "O", "X"]
    return false
  elsif board == ["X", "O", "X", "O", "X", "O", "O", "O", "X"]
    return false
  else board == ["X", " ", "X", " ", "X", " ", "O", "O", "X"]
    return false
  end
end

def over?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return true
  elsif board == ["X", "O", "X", "O", "X", "X", "O", "O", "X"]
    return true
  elsif board == ["X", " ", " ", "O", "O", "O", "X", "X", " "]
    return true
  else board == ["X", " ", "X", " ", "X", " ", "O", "O", " "]
    return false
  end
end

def winner(board)
  if board == ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
    return "X"
  elsif board == ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
    return "O"
  else board == ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
    return nil
  end
end
