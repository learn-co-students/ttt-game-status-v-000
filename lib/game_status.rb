# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  #horizontal
  [0,1,2],
  [3,4,5],
  [6,7,8],
  #vertical
  [0,3,6],
  [1,4,7],
  [2,5,8],
  #diagonal
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    pos_1 = board[win[0]]
    pos_2 = board[win[1]]
    pos_3 = board[win[2]]
    # puts win
    #  puts "#{pos_1}, #{pos_2}, #{pos_3}"
    if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
      return win
    elsif pos_1 == "O" && pos_2 == "O" && pos_3 == "O"
      return win
    end
  end
  return false
end

def full?(board)
  return board.all? { |item|
    item == "X" || item == "O"
  }
end

def draw?(board)
  if won?(board) != false
    return false
  elsif full?(board)
    return true
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) != false
    win_i = Array(won?(board))

    if board[win_i[0]] == "X" && board[win_i[1]] == "X" && board[win_i[2]] == "X"
      return "X"
    elsif board[win_i[0]] == "O" && board[win_i[1]] == "O" && board[win_i[2]] == "O"
      return "O"
    else
      return nil
    end
  end
end
