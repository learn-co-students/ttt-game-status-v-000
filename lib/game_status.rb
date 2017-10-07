# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

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
        if board[wins[0]] == char1 && board[wins[1]] == char1 && board[wins[2]] == char1 || board[wins[0]] == char2 && board[wins[1]] ==char2 && board[wins[2]] == char2
          winning_combo = wins
      end
    end
    winning_combo
  end
end

def full?(board)
  board.none?{|spaces| spaces == " "}
end

def draw?(board)
  if full?(board)== true && won?(board)== false
    return true
  end
end

def over?(board)
  if won?(board) != false
    return true
  elsif draw?(board) == true
    return true
  elsif full?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  won?(board)
  if won?(board) != false
    winner = won?(board)
    board[winner[0]]
  else
    return nil
  end
end
