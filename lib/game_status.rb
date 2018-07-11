# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  # ETC, an array for each win combination
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]

]

def won?(board)
  array = []
  WIN_COMBINATIONS.each do |i|
  if board[i[0]]==board[i[1]]&&board[i[1]]==board[i[2]] && board[i[0]]!=" "
      array = i
      return array
  elsif draw?(board)
    return true
  else
    return false
  end
end

def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  if !won?(board)&&full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board)||full?(board)||draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if draw?(board)||!over?(board)
    return nil
  end
  if board[won?(board)[0]]=="X"
    return "X"
  end
  if board[won?(board)[0]]=="O"
    return "O"
  end
end
