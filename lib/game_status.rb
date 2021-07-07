# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
 top_row_win = [0,1,2],
 middle_row_win = [3,4,5],
 bottom_row_win = [6,7,8],
 left_column_win = [0,3,6],
 middle_column_win = [1,4,7],
 right_column_win = [2,5,8],
 left_diagonal_win = [0,4,8],
 right_diagonal_win = [2,4,6] ]




def won?(board)
  won = false
   WIN_COMBINATIONS.detect do |win_combo|
    if board[win_combo[0]] == "X" &&
      board[win_combo[1]] == "X" &&
      board[win_combo[2]] == "X"
      won = true

     return win_combo
   elsif board[win_combo[0]] == "O" &&
      board[win_combo[1]] == "O" &&
      board[win_combo[2]] == "O"
      return win_combo
      won = true

    else
      won = false
    end
    end
  if won == false
    return won
  else

  end
end


def full?(board)
    index =[0,1,2,3,4,5,6,7,8]
    full = true
    index.detect do |num|
    if board[num].nil? || board[num] == " "
     full = false
    end
  end
  return full
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif full?(board) == true && won?(board) == false
    return false
  end
end


def over?(board)
   if draw?(board) == true
     return true
   elsif won?(board) != false
     return true
   end
end


def winner(board)

   winner = won?(board)
   if winner == false
     return nil
  end
   if board[winner[0]] == "X"
     return "X"
   elsif board[winner[0]] == "O"
     return "O"
   end
end
