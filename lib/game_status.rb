board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # mdidle column
  [2,5,8], # right column
  [0,4,8], # diagonal left start
  [2,4,6] # diagonal right start
]

def won?(board)
  status = false
  WIN_COMBINATIONS.each do |combination|
      position_1 = board[combination[0]]
      position_2 = board[combination[1]]
      position_3 = board[combination[2]]
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        status = true
        return combination

      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        status = true
        return combination
      end
    end
    return status
end

def full?(board)
  if board.include?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
end
end

def over?(board)
  if won?(board) != false || draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) != false
    winning_team = won?(board)
    winner = winning_team[1]
    team = board[winner]
    return team
  end

end
