# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
    # puts display_board(board)
    # puts win_combination
    # puts position_1, position_2, position_3
    if (position_1 == "X" && position_2 == "X" && position_3 == "X") or
      (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return win_combination # return the win_combination indexes that won.
    end
  end
  return false
end

def full?(board)
  ans = board.all? do |cell|
    cell == "X" or cell == "O"
  end
  return ans
end

def draw?(board)
  if !(won?(board)) && full?(board)
    return true
  elsif !(won?(board)) && !(full?(board))
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if won?(board) or full?(board) or draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
