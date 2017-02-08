# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  # ETC, an array for each win combination
  [6,7,8], # abajo horizontal
  [0,3,6], # izquierda vertical
  [1,4,7], # mitad vertical
  [2,5,8], # derecha vertical
  [0,4,8], # diagonal de izquierda a derecha
  [2,4,6]  # diagonal de derecha a izquierda
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination_aray|
   if (
      (board[win_combination_aray[0]] == "X" && board[win_combination_aray[1]] == "X" && board[win_combination_aray[2]] == "X" ) ||
      (board[win_combination_aray[0]] == "O" && board[win_combination_aray[1]] == "O" && board[win_combination_aray[2]] == "O" )
      )
      winner = board[win_combination_aray[0]]
      return win_combination_aray
    else false
    end
  end
  return false
end


def full?(board)
  board.all?{|player| player == "X" || player == "O"}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
  return true
  else
  return false
  end
end


def over?(board)
  if won?(board)
    true
  elsif full?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board) == false
  return  nil
elsif board[won?(board)[1]] == "X"
    return "X"
  else board[won?(board)[1]] == "O"
    return "O"
  end
end
