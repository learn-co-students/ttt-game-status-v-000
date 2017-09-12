# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
   # win_combination == [3,4,5]
  win_index_1 = win_combination[0] # 3
  win_index_2 = win_combination[1] # 4
  win_index_3 = win_combination[2] # 5

  position_1 = board[win_index_1] #board[3]
  position_2 = board[win_index_2] #board[4]
  position_3 = board[win_index_3] #board[5]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  else
    false
  end
  end
  false
end

def full?(board)
  if board.include?(" ")
  false
  else
  true
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  else
    false
  end
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
  if board[won?(board)[0]] == "X"
    "X"
  elsif board[won?(board)[0]] == "O"
    "O"
  else
    nil
  end
end
end
