require "pry"

# Helper Method
def position_taken?(board, index)
    !(board[index].nil? || board[index] == " ")
end

# method(argument) == true is the same as method(argument)
# method(argument) == false is the same as !method(argument)

def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    false
  elsif
    WIN_COMBINATIONS.each do |combination|
      if board[0] == "X" && board[1] == "X" && board[2] == "X"
        return WIN_COMBINATIONS[0]
      elsif board[0] == "O" && board[1] == "O" && board[2] == "O"
        return WIN_COMBINATIONS[0]
      elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
        return WIN_COMBINATIONS[1]
      elsif board[3] == "O" && board[4] == "O" && board[5] == "O"
        return WIN_COMBINATIONS[1]
      elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
        return WIN_COMBINATIONS[2]
      elsif board[6] == "O" && board[7] == "O" && board[8] == "O"
        return WIN_COMBINATIONS[2]
      elsif board[0] == "X" && board[3] == "X" && board[6] == "X"
        return WIN_COMBINATIONS[3]
      elsif board[0] == "O" && board[3] == "O" && board[6] == "O"
        return WIN_COMBINATIONS[3]
      elsif board[1] == "X" && board[4] == "X" && board[7] == "X"
        return WIN_COMBINATIONS[4]
      elsif board[1] == "O" && board[4] == "O" && board[7] == "O"
        return WIN_COMBINATIONS[4]
      elsif board[2] == "X" && board[5] == "X" && board[8] == "X"
        return WIN_COMBINATIONS[5]
      elsif board[2] == "O" && board[5] == "O" && board[8] == "O"
        return WIN_COMBINATIONS[5]
      elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
        return WIN_COMBINATIONS[6]
      elsif board[0] == "O" && board[4] == "O" && board[8] == "O"
        return WIN_COMBINATIONS[6]
      elsif board[2] == "X" && board[4] == "X" && board[6] == "X"
        return WIN_COMBINATIONS[7]
      elsif board[2] == "O" && board[4] == "O" && board[6] == "O"
        return WIN_COMBINATIONS[7]
      else
        return false
      end
    end
  else
    false
  end
end

def full?(board)
    won?(board)
    if board[0] == " "
      false
    elsif board[1] == " "
      false
    elsif board[2] == " "
      false
    elsif board[3] == " "
      false
    elsif board[4] == " "
      false
    elsif board[5] == " "
      false
    elsif board[6] == " "
      false
    elsif board[7] == " "
      false
    elsif board[8] == " "
      false
    else !won?(board) || won?(board)
      return true
    end
end

def draw?(board)
  won?(board)
  full?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  elsif won?(board) && !full?(board)
    return false
#REMEMBER TO MAKE FINAL ELSE NOT ELSIF
  else won?(board) && full?(board)
    return false
  end
end

def over?(board)
  won?(board)
  draw?(board)
  full?(board)

  if draw?(board)
    return true
  elsif won?(board) && full?(board)
    return true
  elsif won?(board) && !full?(board)
    return true
  else
    return false
  end
end

def winner(board)
   won?(board)
   if won?(board)
#  EX; return WIN_COMBINATIONS[0] = [0,1,2]
    (won?(board)).each do |position|
#  ([0,1,2]).each do |position|
      board[position]
      if board[position] == "X"
        return "X"
      elsif board[position] == "O"
        return "O"
      end
    end
  else
    nil
  end
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Diagonal downward right
  [2,4,6] #Diagonal downward left
]

=begin
for each win_combination in WIN_COMBINATIONS
 win_combination is a 3 element array of indexes that compose a win, [0,1,2]
 grab each index from the win_combination that composes a win.
win_index_1 = win_combination[0]
win_index_2 = win_combination[1]
win_index_3 = win_combination[2]
win_index_4 = win_combination[3]
win_index_5 = win_combination[4]
win_index_6 = win_combination[5]
win_index_7 = win_combination[6]

position_1 = board[win_index_1] = board[win_combination[0]]
position_2 = board[win_index_2]
position_3 = board[win_index_3]
position_4 = board[win_index_4]
position_5 = board[win_index_5]
position_6 = board[win_index_6]

if board[win_combination[0]] == "X" && board[win_combination[1]]== "X" && position_3 == "X"
  return win_combination
else
  false
end
end

=end
