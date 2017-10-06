# Define your WIN_COMBINATIONS constant
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top Row Win
  [3,4,5], # Middle Row Win
  [6,7,8], # Bottom Row Win
  [0,3,6], # First Column Win
  [1,4,7], # Second Column Win
  [2,5,8], # Third Column Win
  [0,4,8], # Diagonal Win from Left
  [6,4,2]  # Diagonal Win from Right
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
  if full?(board) == true && won?(board) == false
    return true
  end
end

def over?(board)
  if draw?(board)
    return true
  elsif won?(board)
    return true
  elsif full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  winning_combo = won?(board)
  if winning_combo
    index = winning_combo[0]
    return board[index]
  else
    return nil
  end
end
