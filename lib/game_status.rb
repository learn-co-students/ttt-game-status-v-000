# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

characters_array = ["X", "O"]

def won?(board)
  if !(board.include?("X")) && !(board.include?("O"))
    return false
  end
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[0]] != " "
      if board[combo[0]] != nil && board[combo[1]] == board[combo[2]]
         return combo
      end
    end
  end
  false
end

def full?(board)
  if board.include?(" ") || board.include?(nil)
    false
  else
    true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    winning_array = won?(board)
    if board[winning_array[0]] == "X"
      return "X"
    else
      return "O"
    end
  else
    nil
  end
end
