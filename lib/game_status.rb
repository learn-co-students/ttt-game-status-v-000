# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [2, 5, 8],
  [1, 4, 7]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    
    win1 = combo[0]
    win2 = combo[1]
    win3 = combo[2]

    position1 = board[win1]
    position2 = board[win2]
    position3 = board[win3]

    if position1 == "X" && position2 == "X" && position3 == "X" || position1 == "O" && position2 == "O" && position3 == "O"
      return combo
    
    end
  end
  return false
end


def full?(board)

  board.all? do |x|
    x == "X" || x == "O"
end
end

def draw?(board)
  return true if won?(board) == false && full?(board) == true
end 


def over?(board)
  return true if won?(board) == true || draw?(board) == true || full?(board) == true
end

def winner(board)
  WIN_COMBINATIONS.each do |combo|
    
    win1 = combo[0]
    win2 = combo[1]
    win3 = combo[2]

    position1 = board[win1]
    position2 = board[win2]
    position3 = board[win3]

  if position1 == "X" && position2 == "X" && position3 == "X"
    return "X"
  elsif position1 == "O" && position2 == "O" && position3 == "O"
    return "O"
  end
end
    return nil
end






