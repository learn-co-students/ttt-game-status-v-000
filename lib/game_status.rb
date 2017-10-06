# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

def won?(board)
  winning_combo = false
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  else
    WIN_COMBINATIONS.each do |wins|
      #wins = first thing in WIN_C
      #wins = 2nd thing in WIN_C
      char1 = "X"
      char2 = "O"
      if board[wins[0]] == char1 && board[wins[1]] == char1 && board[wins[2]] == char1 ||
        board[wins[0]] == char2 && board[wins[1]] ==char2 && board[wins[2]] == char2
        winning_combo = wins
      end
    end
    winning_combo
  end
end


def full?(board)
  if board.include?(' ') || board.include?('')
    return false
else
    return true
  end
end

def draw?(board)
  if !won?(board) && !full?(board) || won?(board)
    return false
  else
    !won?(board) && full?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end


def winner(board)
  winning_combo = won?(board)
  if winning_combo
    index = winning_combo[0]
    winner = board[index]
    return winner
  else
    return nil
  end
end
