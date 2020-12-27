# Helper Method
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [0,4,8],
  [2,4,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  for x in WIN_COMBINATIONS
    win_index_1 = x[0]
    win_index_2 = x[1]
    win_index_3 = x[2]
    p1 = board[win_index_1]
    p2 = board[win_index_2]
    p3 = board[win_index_3]

    if p1 == "X" && p2 == "X" && p3 == "X"
      return x
    elsif p1 == "O" && p2 == "O" && p3 == "O"
      return x
    end
  end
  false
end

def full?(board)
  board.all?{|cell| cell != ' '}
end

def draw?(board)
  if won?(board)
    false
  elsif full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  for x in WIN_COMBINATIONS
    win_index_1 = x[0]
    win_index_2 = x[1]
    win_index_3 = x[2]
    p1 = board[win_index_1]
    p2 = board[win_index_2]
    p3 = board[win_index_3]

    if p1 == "X" && p2 == "X" && p3 == "X"
      return 'X'
    elsif p1 == "O" && p2 == "O" && p3 == "O"
      return 'O'
    end
  end
  nil
end

#def position_taken?(board, index)
#  !(board[index].nil? || board[index] == " ")
#end

# Define your WIN_COMBINATIONS constant
