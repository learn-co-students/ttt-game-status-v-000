# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
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

def winner_array(board)
  counter = 0
  xs = []
  os = []
  board.each do |move|
    if move == "X"
      xs << counter
    elsif move == "O"
      os << counter
    end
    counter += 1
  end
  won = false
  winner_arr = []
  WIN_COMBINATIONS.each do | combo |
    won = combo.all? do | i |
      xs.include?(i)
    end
    if won == true
      winner_arr = ["X", combo]
      return winner_arr
      break
    else
      won = combo.all? do | i |
        os.include?(i)
      end
      if won == true
        winner_arr = ["O", combo]
        return winner_arr
        break
      end
    end
  end
  won
end

def won?(board)
  if winner_array(board) == false
    false
  else
    winner_array(board)[1]
  end
end

def full?(board)
  board.all? do | space |
    space == "X" || space == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if winner_array(board) == false
    nil
  else
    winner_array(board)[0]
  end
end
