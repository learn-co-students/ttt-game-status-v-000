# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

def turn_count(board)
  occupied_positions = 0
  board.each do |position|
    if position == "X" || position == "O"
      occupied_positions += 1
    end
  end
  return occupied_positions
end


def current_player(board)
  occupied_positions = turn_count(board)
  occupied_positions.even? ? "X":"O"
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
  
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  end

  WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X" || 
       position_1 == "O" && position_2 == "O" && position_3 == "O"
      return [win_index_1, win_index_2, win_index_3]
    end
  end
  return false
end

def full?(board)
  board.each_with_index do |pos, i|
    if !position_taken?(board, i)
      return false
    end
  end

  return true
end

def draw?(board)
  if won?(board)
    return false
  elsif full?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  elsif !full?(board)
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
