require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
  board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board,combo[0])
  end
end

def full?(board)
  if board[0] != " " && board[1] != " " && board[2] != " " && board[3] != " " && board[4] != " " && board[5] != " " && board[5] != " " && board[6] != " " && board[7] != " " && board[8] != " "
   true
  else 
    false 
  end 
end

def draw?(board)
  if won?(board) != nil  
    false
  elsif full?(board)
    true
  elsif board[0] == " " || board[1] == " " || board[2] == " " || board[3] == " " || board[4] == " " || board[5] == " " || board[6] == " " || board[7] == " " || board[8] == " " ||
    false
  end
end 


def over?(board)
  WIN_COMBINATIONS.detect do |combo|
      if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board,combo[0])
        true 
      elsif board[0] != " " && board[1] != " " && board[2] != " " && board[3] != " " && board[4] != " " && board[5] != " " && board[5] != " " && board[6] != " " && board[7] != " " && board[8] != " "
        true
      else 
        false
      end
   end
end 


def winner(board)
  WIN_COMBINATIONS.detect do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && board[combo[0]] == "X" && position_taken?(board,combo[0])
      return "X"
    elsif board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && board[combo[0]] == "O" && position_taken?(board,combo[0])
      return "O"
    end
  end 
end