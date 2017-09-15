####################################
def winner(board)
if won?(board)
  WIN_COMBINATIONS.detect{|winner| winner == "O"}
    return "O"
  elsif
    WIN_COMBINATIONS.detect{|winner| winner == "X"}
      return "X"
else nil
end
end
####################################
def winner(board)
if won?(board)
  WIN_COMBINATIONS.detect{|x_wins| x_wins == "X"}
    return "X"
  elseif
  WIN_COMBINATIONS.detect{|o_wins| o_wins == "O"}
return "O"
#else nil
end
end
############################################

if board.detect{|x_wins| x_wins == "X"}
return "X"
else board.detect{|o_wins| o_wins == "O"}
  return "O"
elsif nil
elsif WIN_COMBINATIONS.detect{|o_wins| o_wins == "O"}
  return "O"
end
end
end

def winner(board)

won?(board).detect do |winner|
#  win_combinations.detect do |winner|
#  winner == "X" || winner == "O"
  winner
end
end
