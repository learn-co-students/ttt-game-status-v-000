# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
  WIN_COMBINATIONS.each do |win_array|
    win_index_1 = win_array[0]
    win_index_2 = win_array[1]
    win_index_3 = win_array[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_array
    end
    if position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_array
    end
  end
  return false
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) != false || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  winner_chars = []
  if won?(board) == false
    return nil
  end
  winner_index = won?(board)
  winner_index.each do |index|
    winner_chars << board[index]
  end

  if X_winner(winner_chars) == true
    puts "X"
    return "X"
  elsif O_winner(winner_chars) == true
    puts "O"
    return "O"
  end
end

def X_winner(winner_chars)
  winner_chars.all? do |position|
    position == "X"
  end
end

def O_winner(winner_chars)
  winner_chars.all? do |position|
    position == "O"
  end
end

board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
winner(board)
