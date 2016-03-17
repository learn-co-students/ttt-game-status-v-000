# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
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


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board) 
  win_index_1 = WIN_COMBINATIONS[0][0]
  win_index_2 = WIN_COMBINATIONS[0][1]
  win_index_3 = WIN_COMBINATIONS[0][2]
  win_index_4 = WIN_COMBINATIONS[1][0]
  win_index_5 = WIN_COMBINATIONS[1][1]
  win_index_6 = WIN_COMBINATIONS[1][2]
  win_index_7 = WIN_COMBINATIONS[2][0]
  win_index_8 = WIN_COMBINATIONS[2][1]
  win_index_9 = WIN_COMBINATIONS[2][2]
  win_index_10 = WIN_COMBINATIONS[3][0]
  win_index_11 = WIN_COMBINATIONS[3][1]
  win_index_12 = WIN_COMBINATIONS[3][2]
  win_index_13 = WIN_COMBINATIONS[4][0]
  win_index_14 = WIN_COMBINATIONS[4][1]
  win_index_15 = WIN_COMBINATIONS[4][2]
  win_index_16 = WIN_COMBINATIONS[5][0]
  win_index_17 = WIN_COMBINATIONS[5][1]
  win_index_18 = WIN_COMBINATIONS[5][2]
  win_index_19 = WIN_COMBINATIONS[6][0]
  win_index_20 = WIN_COMBINATIONS[6][1]
  win_index_21 = WIN_COMBINATIONS[6][2]
  win_index_22 = WIN_COMBINATIONS[7][0]
  win_index_23 = WIN_COMBINATIONS[7][1]
  win_index_24 = WIN_COMBINATIONS[7][2]


  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  position_4 = board[win_index_4]
  position_5 = board[win_index_5]
  position_6 = board[win_index_6]
  position_7 = board[win_index_7]
  position_8 = board[win_index_8]
  position_9 = board[win_index_9]
  position_10 = board[win_index_10]
  position_11 = board[win_index_11]
  position_12 = board[win_index_12]
  position_13 = board[win_index_13]
  position_14 = board[win_index_14]
  position_15 = board[win_index_15]
  position_16 = board[win_index_16]
  position_17 = board[win_index_17]
  position_18 = board[win_index_18]
  position_19 = board[win_index_19]
  position_20 = board[win_index_20]
  position_21 = board[win_index_21]
  position_22 = board[win_index_22]
  position_23 = board[win_index_23]
  position_24 = board[win_index_24]

  board.select do |board|
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return WIN_COMBINATIONS[0]
  elsif position_4 == "X" && position_5 == "X" && position_6 == "X"
    return WIN_COMBINATIONS[1]
  elsif position_7 == "X" && position_8 == "X" && position_9 == "X"
    return WIN_COMBINATIONS[2]
  elsif position_10 == "O" && position_11 == "O" && position_12 == "O"
    return WIN_COMBINATIONS[3]
  elsif position_13 == "O" && position_14 == "O" && position_15 == "O"
    return WIN_COMBINATIONS[4]
  elsif position_16 == "O" && position_17 == "O" && position_18 == "O"
    return WIN_COMBINATIONS[5]
  elsif position_19 == "X" && position_20 == "X" && position_21 == "X"
    return WIN_COMBINATIONS[6]
  elsif position_22 == "O" && position_23 == "O" && position_24 == "O"
    return WIN_COMBINATIONS[7]
  else
    return false
  end
end
end


def full?(board)
  board.all? do |board|
    board == "X" || board == "O"
  end
end


def draw?(board)
  if won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) == true
    return true
  end
end

def winner(board)
  if won?(board) == WIN_COMBINATIONS[0] 
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[1]
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[2]
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[6]
    return "X"
  elsif won?(board) == WIN_COMBINATIONS[3]
    return "O"
  elsif won?(board) == WIN_COMBINATIONS[4]
    return "O"
  elsif won?(board) == WIN_COMBINATIONS[5]
    return "O"
  elsif won?(board) == WIN_COMBINATIONS[7]
    return "O"
  else 
    return nil
  end
end
      
      
      
      
        
      
    









