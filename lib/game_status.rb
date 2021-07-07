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
      [6,4,2]
    ]
def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
      position_1 = win_combination[0] # 3
      position_2 = win_combination[1] # 4
      position_3 = win_combination[2] # 5

      if position_taken?(board, position_1) && board[position_1] == board[position_2] && board[position_3] == board[position_1]
        return win_combination
      end
    end
    return false
end

def full?(board)
    board.each do |token|
      if token == " "
        return false
      else token == "X" || token == "O"
      end
    end
end

def draw?(board)
    if won?(board)
      return false
    end
    board.each do |token|
      if token != "X" && token != "O"
        return false
      end
    end
    true
end

def over?(board)
  if full?(board)
    print "In full"
    return true
  end
  if draw?(board)
    print "In draw"
    return true
  end
  if won?(board)
    print "In won"
    return true
  end
  false
end

def winner(board)
  if winning_combo = won?(board) #winning_combo stores whatever the winning combo is, e.g. [6, 7, 8]
    board[winning_combo[0]] #give me an "X" or "O" from the winning combo
  end
end
