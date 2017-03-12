# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def full?(board)
  is_full = board.all? do |space|
    space =="X" || space == "O"
  end
  if is_full
    true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  elsif won?(board)
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end

def winner(board)
  if won?(board)
    win_arr = won?(board)
    board[win_arr[0]]
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

def won?(board)
  the_win_combination = false
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") ||
      (position_1 == "O" && position_2 == "O" && position_3 == "O")
      the_win_combination = win_combination
      break
    end
  end
  the_win_combination
end
