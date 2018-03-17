# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

=begin
#my solution

def won?(board)
  winning_x_combination = []
  winning_o_combination = []
  WIN_COMBINATIONS.each do |win_combination|

    win_for_x = win_combination.all? do |win_index|
      board[win_index] == "X"
    end

    if win_for_x == true
      winning_x_combination = win_combination
    end

    win_for_o = win_combination.all? do |win_index|
      board[win_index] == "O"
    end

    if win_for_o == true
      winning_o_combination = win_combination
    end

  end

  if winning_x_combination != [] && winning_o_combination == []
    winning_x_combination
  elsif winning_o_combination != [] && winning_x_combination == []
    winning_o_combination
  else
    false
  end
end

=end

#better solution
def won?(board)
  #detect returns first element matching the criteria (here - a winning combination)
  #If the first winning board index (win_combination[0) matches the second and third, and the position is taken, then returns that win_combination
  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] &&
    board[win_combination[1]] == board[win_combination[2]] &&
    position_taken?(board, win_combination[0])
  end
end

def full?(board)
  board.all? {|position| position == "X" || position == "O"}
end

def draw?(board)
  #if full?(board) == true && won?(board) == false
    #true
  #end
  #better:
  full?(board) && !won?(board)
end

def over?(board)
  #if full?(board) == true || won?(board) == true || draw?(board) == true
    #true
  #end
  #better:
  full?(board) || won?(board) #don't need draw?(board) here, bec. draw?(board) true means full and not won
end

def winner(board)
  if won?(board) #!= false - don't need this: seems to test for if it's anything but false
    winning_combination = won?(board)
    return board[winning_combination[0]]
  else
    nil
  end
end

=begin
#suggested solution
def winner(board)
  if winning_combo = won?(board) #seems you can define a variable as part of a condition in Ruby
    board[winning_combo.first]
  end
end
=end
