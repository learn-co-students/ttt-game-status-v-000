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
# break the board down
# evaluate all the positions
# how to mark the X's and O'x
# how to match 3 in a row...
# if anything matches the win combinations, return the win combination

  position_0 = board[0]
  position_1 = board[1]
  position_2 = board[2]
  position_3 = board[3]
  position_4 = board[4]
  position_5 = board[5]
  position_6 = board[6]
  position_7 = board[7]
  position_8 = board[8]

# this looks unnecessary but does the job

    if position_0 == "X" && position_1 == "X" && position_2 == "X" #top row [0,1,2]
      return WIN_COMBINATIONS[0]
    elsif position_0 == "O" && position_1 == "O" && position_2 == "O" #top row [0,1,2]
      return WIN_COMBINATIONS[0]
    elsif position_3 == "X" && position_4 == "X" && position_5 == "X" #middle row [3,4,5]
      return WIN_COMBINATIONS[1]
    elsif position_3 == "0" && position_4 == "0" && position_5 == "0" #middle row [3,4,5]
      return WIN_COMBINATIONS[1]
    elsif position_6 == "X" && position_7 == "X" && position_8 == "X" #bottom row [6,7,8]
      return WIN_COMBINATIONS[2]
    elsif position_6 == "O" && position_7 == "O" && position_8 == "O" #bottom row [6,7,8]
      return WIN_COMBINATIONS[2]
    elsif position_0 == "X" && position_3 == "X" && position_6 == "X" #left column [0,3,6]
      return WIN_COMBINATIONS[3]
    elsif position_0 == "O" && position_3 == "O" && position_6 == "O" #left column [0,3,6]
      return WIN_COMBINATIONS[3]
    elsif position_1 == "X" && position_4 == "X" && position_7 == "X" #middle column  [1,4,7]
      return WIN_COMBINATIONS[4]
    elsif position_1 == "O" && position_4 == "O" && position_7 == "O" #middle column  [1,4,7]
      return WIN_COMBINATIONS[4]
    elsif position_2 == "X" && position_5 == "X" && position_8 == "X" #right column [2,5,8]
      return WIN_COMBINATIONS[5]
    elsif position_2 == "O" && position_5 == "O" && position_8 == "O" #right column [2,5,8]
      return WIN_COMBINATIONS[5]
    elsif position_0 == "X" && position_4 == "X" && position_8 == "X" #left diagonal [0,4,8],
      return WIN_COMBINATIONS[6]
    elsif position_0 == "O" && position_4 == "O" && position_8 == "O" #left diagonal [0,4,8],
      return WIN_COMBINATIONS[6]
    elsif position_2 == "X" && position_4 == "X" && position_6 == "X" #right diagonal [2,4,6]
      return WIN_COMBINATIONS[7]
    elsif position_2 == "O" && position_4 == "O" && position_6 == "O" #right diagonal [2,4,6]
      return WIN_COMBINATIONS[7]
    else
      false
    end
end

def full?(board)
  board.all? {|x| x == "X" || x == "O"}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  elsif full?(board) == false && won?(board) == false
    return false
  else won?(board) == true
    return false
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    win_1 = won?(board)[0]
    puts win_1

    if board[win_1] == "X"
      return "X"
    elsif board[win_1] == "O"
      return "O"
    else
      nil
    end
  end
end
