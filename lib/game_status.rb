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
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
      board_position1 = combo[0]
      board_position2 = combo[1]
      board_position3 = combo[2]

      win_position1 = board[board_position1]
      win_position2 = board[board_position2]
      win_position3 = board[board_position3]

      if win_position1 == "X" && win_position2 == "X" && win_position3 == "X"
        return combo
      elsif win_position1 == "O" && win_position2 == "O" && win_position3 == "O"
        return combo
      end
    end
    return false
end

def full?(board)
  if board.all? {|a| a != " "}
    return true
  else false
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif full?(board) != true
    return false
  else won?(board) == true
    return false
  end
end

def over?(board)
  if draw?(board) == true
    return true
  elsif full?(board) == false && won?(board) != false
    return true
  elsif full?(board) == true && won?(board) != false
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) != false
    return board[won?(board)[0]]
  end
end
