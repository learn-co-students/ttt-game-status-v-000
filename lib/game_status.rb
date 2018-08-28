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
count = 0
while count <= WIN_COMBINATIONS.length-1
  win_combination = WIN_COMBINATIONS[count]

  win_index1 = win_combination[0]
  win_index2 = win_combination[1]
  win_index3 = win_combination[2]
  
  position_1 = board[win_index1]
  position_2 = board[win_index2]
  position_3 = board[win_index3]

  if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
    winning_array = [win_index1,win_index2,win_index3]
  end
  count += 1
end
winning_array
end


def full?(board)
  !board.include?(" ") #=> true
end


def draw?(board)
  won = won?(board)
  full = full?(board)
  if won == nil && full == true
    true
  elsif won != ""
    false
  end
end


def over?(board)
  if won?(board) != nil || draw?(board) == true || full?(board) == true
    true
  end
end


def winner(board)
  won = won?(board)
  if won != nil
    winner = board[won[0]]
    winner
  end
end
