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
]
def won?(board)
  win_result = []
  WIN_COMBINATIONS.each do |win_combo|
    position_1 = board[win_combo[0]]
    position_2 = board[win_combo[1]]
    position_3 = board[win_combo[2]]


    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      win_result = win_combo
    else
      false
    end
  end
  if win_result.empty?
    return false
  else
    return win_result
  end
end

def full?(board)
  if board.any? { |position| position == " " }
    return false
  else
    return true
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) == true || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == false
    return nil
  else
    token = board[won?(board)[0]]
    return token
  end
end
  
