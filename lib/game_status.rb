# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row win
  [3, 4, 5], #middle row win
  [6, 7, 8], #bottom row win
  [0, 3, 6], #left column win
  [1, 4, 7], #middle column win
  [2, 5, 8], #Right column win
  [0, 4, 8], #upper left to bottom right diagonal win
  [2, 4, 6]]  #upper right to bottom left diagonal win



def won?(board)
  WIN_COMBINATIONS.any? do |win_combination|  #iterating through the WIN_COMBINATIONS constant, to find any cases of true
    if win_combination.all? {|index| board[index] == "X"}
      return win_combination
    elsif win_combination.all? {|index| board[index] == "O"}
      return win_combination
    end
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  elsif full?(board) == false && won?(board) == false
    return false
  elsif won?(board) == true
    return false
  end
end

def over?(board)
  if won?(board) == true
    return true
  elsif full?(board) == true
    return true
  elsif draw?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == false
    return nil
  else
    WIN_COMBINATIONS.any? do |win_combination|  #iterating through the WIN_COMBINATIONS constant, to find any cases of true
      if win_combination.all? {|index| board[index] == "X"}
        return "X"
      elsif win_combination.all? {|index| board[index] == "O"}
        return "O"
      end
    end
  end
end
