# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == ' ')
end

def won?(board)
  if board.all?{|n| n == ' '}
    return false
  elsif board.all?{|n| (n == 'X' || n == 'O')}
    WIN_COMBINATIONS.each do |combo|
      if combo.all?{|n| board[n] == 'X'}
        return combo
      elsif combo.all?{|n| board[n] == 'O'}
        return combo
      else
        return false
      end
    end
  else
    WIN_COMBINATIONS.each do |combo|
      if combo.all?{|n| board[n] == 'X'}
        return combo
      elsif combo.all?{|n| board[n] == 'O'}
        return combo
      end
    end
  end
end

def full?(board)
  if board.all?{|n| (n == 'X' || n == 'O')}
    return true
  else
    return false
  end
end

def draw?(board)
  if board.all?{|n| (n == "X" || n == "O")}
    WIN_COMBINATIONS.each do |combo|
      if combo.all?{|n| board[n] == 'X'}
        return false
      elsif combo.all?{|n| board[n] == 'O'}
        return false
      end
    end
    return true
  else
    return false
  end
end

def helper(board)
  WIN_COMBINATIONS.each do |combo|
    if combo.all?{|n| board[n] == "X"}
      return true
    elsif combo.all?{|n| board[n] == "O"}
      return true
    end
  end
end

def over?(board)
  if draw?(board) == true
    return true
  elsif board.all?{|n| n == " "}
    return false
  elsif helper(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if helper(board) == true
    WIN_COMBINATIONS.each do |combo|
      if combo.all?{|n| board[n] == "X"}
        return "X"
      elsif combo.all?{|n| board[n] == "O"}
        return "O"
      end
    end
  else
    return nil
  end
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
