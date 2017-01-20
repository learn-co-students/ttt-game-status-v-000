# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #1st column
  [1,4,7], #2nd column
  [2,5,8], #third column
  [0,4,8], #1 diagonal
  [2,4,6] #2nd diagonal
]
# def won?(board)
#   if board[0] == "X" && board[1] == "X" && board[2] == "X"
#     return WIN_COMBINATIONS[0]
#   elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
#     return WIN_COMBINATIONS[1]
#   elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
#     return WIN_COMBINATIONS[2]
#   elsif board[0] == "X" && board[3] == "X" && board[6] == "X"
#     return WIN_COMBINATIONS[3]
#   elsif board[1] == "X" && board[4] == "X" && board[7] == "X"
#     return WIN_COMBINATIONS[4]
#   elsif board[2] == "X" && board[5] == "X" && board[8] == "X"
#     return WIN_COMBINATIONS[5]
#   elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
#     return WIN_COMBINATIONS[6]
#   elsif board[2] == "X" && board[4] == "X" && board[6] == "X"
#     return WIN_COMBINATIONS[7]
#   elsif board[0] == "O" && board[1] == "O" && board[2] == "O"
#       return WIN_COMBINATIONS[0]
#     elsif board[3] == "O" && board[4] == "O" && board[5] == "O"
#       return WIN_COMBINATIONS[1]
#     elsif board[6] == "O" && board[7] == "O" && board[8] == "O"
#       return WIN_COMBINATIONS[2]
#     elsif board[0] == "O" && board[3] == "O" && board[6] == "O"
#       return WIN_COMBINATIONS[3]
#     elsif board[1] == "O" && board[4] == "O" && board[7] == "O"
#       return WIN_COMBINATIONS[4]
#     elsif board[2] == "O" && board[5] == "O" && board[8] == "O"
#       return WIN_COMBINATIONS[5]
#     elsif board[0] == "O" && board[4] == "O" && board[8] == "O"
#       return WIN_COMBINATIONS[6]
#     elsif board[2] == "O" && board[4] == "O" && board[6] == "O"
#       return WIN_COMBINATIONS[7]
#   else
#   end
# end

def full?(board)
  all_full = false
  board.all? do |space|
    if space == "X" || space == "O"
      all_full = true
    end
  end
end

def draw?(board)
  if won?(board)
    false
  elsif full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board)
    true
  elsif draw?(board)
    true
  else
    false
  end
end

# # def winner(board)
#   if board[0] == "X" && board[1] == "X" && board[2] == "X"
#     return "X"
#   elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
#     return "X"
#   elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
#     return "X"
#   elsif board[0] == "X" && board[3] == "X" && board[6] == "X"
#     return "X"
#   elsif board[1] == "X" && board[4] == "X" && board[7] == "X"
#     return "X"
#   elsif board[2] == "X" && board[5] == "X" && board[8] == "X"
#     return "X"
#   elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
#     return "X"
#   elsif board[2] == "X" && board[4] == "X" && board[6] == "X"
#     return "X"
#   elsif board[0] == "O" && board[1] == "O" && board[2] == "O"
#       return "O"
#     elsif board[3] == "O" && board[4] == "O" && board[5] == "O"
#       return "O"
#     elsif board[6] == "O" && board[7] == "O" && board[8] == "O"
#       return "O"
#     elsif board[0] == "O" && board[3] == "O" && board[6] == "O"
#       return "O"
#     elsif board[1] == "O" && board[4] == "O" && board[7] == "O"
#       return "O"
#     elsif board[2] == "O" && board[5] == "O" && board[8] == "O"
#       return "O"
#     elsif board[0] == "O" && board[4] == "O" && board[8] == "O"
#       return "O"
#     elsif board[2] == "O" && board[4] == "O" && board[6] == "O"
#       return "O"
#   else
#   end
# end

def won?(board)
  WIN_COMBINATIONS.each do |combo|
     if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
       return combo
     elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
       return combo
     else
     end
  end
  return false
end

def winner(board)
  WIN_COMBINATIONS.each do |combo|
     if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
       return "X"
     elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
       return "O"
     else
     end
  end
  return nil
end
