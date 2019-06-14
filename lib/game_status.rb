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

def won?(board)
  WIN_COMBINATIONS.each_with_index do |element, index| 
    if position_taken?(board,element[0]) == TRUE
        #checks for nonempty spots in the array
      if board[element[0]] == board[element[1]] && board[element[0]] == board[element[2]]
        #win combinations for either O or X
        return WIN_COMBINATIONS[index]
      end
    end
  end
  return FALSE
end

def full?(board)
  board.all? do |index|
    #checks for all positions taken on the board
    index == "X" || index == "O"
  end
end

def draw?(board)
  won?(board) == false && full?(board) == TRUE
end

def over?(board)
  #checks for win conditions
  while won?(board)
    if draw?(board) == true || full?(board) == true
      return true
  #winning condition /w full board
    elsif full?(board) == false
      return true
    end
  end
  if draw?(board) == true
    return true
  end
end

def winner(board)
  no_winner = nil
  if !won?(board)
    return nil
    #all non winners return nil
  else
    no_winner = board[won?(board)[0]]
    #returns character of winning board combination
  end
  return no_winner
end
