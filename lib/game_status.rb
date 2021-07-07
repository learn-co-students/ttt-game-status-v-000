# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  won = false
  WIN_COMBINATIONS.each do |comboArray|
    position1 = board[comboArray[0]]
    position2 = board[comboArray[1]]
    position3 = board[comboArray[2]]
    if ((position1 == "X" && position2 == "X" && position3 == "X") ||
        (position1 == "O" && position2 == "O" && position3 == "O"))
        return [comboArray[0], comboArray[1], comboArray[2]]
    end
  end
  won
end

def full?(board)
  full = board.none? do |boardValue|
    boardValue == " " || boardValue == ""
  end
  full
end

#true if it's full and not been won

def draw? (board)
  value = false
  if (full?(board) && won?(board) == false)
    value = true
  end
  value
end

def over? (board)
  if (draw?(board) || won?(board) != false)
    return true
  else
    return false
  end
end

def winner(board)
  answer = nil
  if (won?(board) != false)
    index = won?(board)[0]
    answer = board[index]
  end
  return answer
end
