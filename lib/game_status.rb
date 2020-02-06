WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Diagonal Down Left To Right
  [2,4,6], # Diagonal Down Right To Left
  [0,3,6], # First Column
  [1,4,7], # Second Column
  [2,5,8], # Third Column
]

win_combo1 = WIN_COMBINATIONS[0]
win_combo2 = WIN_COMBINATIONS[1]
win_combo3 = WIN_COMBINATIONS[2]
win_combo4 = WIN_COMBINATIONS[3]
win_combo5 = WIN_COMBINATIONS[4]
win_combo6 = WIN_COMBINATIONS[5]
win_combo7 = WIN_COMBINATIONS[6]
win_combo8 = WIN_COMBINATIONS[7]

def won?(board)
  WIN_COMBINATIONS.each do |option|
    if board[option[0]] == "X" && board[option[1]] == "X" && board[option[2]] == "X"
      true
      winner = "X"
      winner(winner)
      return option
    elsif
      board[option[0]] == "O" && board[option[1]] == "O" && board[option[2]] == "O"
      true
      winner = "O"
      winner(winner)
      return option
    end
  end
  false
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def full?(board)
  counter = 0
  board.each do |space|
    if space != " "
      counter += 1
    end
  end
  if counter == 9
    return true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |option|
    if board[option[0]] == "X" && board[option[1]] == "X" && board[option[2]] == "X"
      return "X"

    elsif
      board[option[0]] == "O" && board[option[1]] == "O" && board[option[2]] == "O"
      return "O"
    end
  end
  return nil
end

def over?(board)
  if draw?(board)
    return true
  elsif full?(board) && won?(board)
    return true
  elsif won?(board)
    return true
  end
end
