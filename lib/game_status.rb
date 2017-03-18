# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8], # <-- Horizontal win
  [0, 3, 6], [1, 4, 7], [2, 5, 8], # <-- Vertical win
  [0, 4, 8], [2, 4, 6] # <-- Diagonal win
]

# build won? needs WIN_COMBINATIONS to work. 8 ways to win. inspect returns a human readable array value.
# try to iterate over the combo to check if it has X or O at the indicies to win. define in terms of winner X or winner O
def won?(board)

  WIN_COMBINATIONS.each do |current_combo|

    win_x = current_combo.all? { |position| board[position] == "X" }
    win_o = current_combo.all? { |position| board[position] == "O"}

    if win_x || win_o
      return current_combo

    end
  end
    false
end

#full? the all enumerator wants every value to return true or it will automatically return false. so, if all combo is full, then true.
def full?(board)
  if draw?(board)
    true
  else
    false
  end
end

#empty? to balance out the full?
def empty?(board)
  board.all? {|value| value.nil? || value == " " }
end

#build draw? position_taken but not won = draw. if empty or full win then not draw. !empty is in progress.
def draw?(board)
  if ( board.all? {|value| !value.nil? && value != " "} && !won?(board) )
    true
  elsif ( won?(board) == [0, 1, 2] ||  won?(board) == [0, 4, 8] || won?(board) == [2, 4, 6] ) || !empty?(board)
    false
  end

end

#over? if either of these return true, it will be true else false. != or could return an array.
def over?(board)
  won?(board) != false || draw?(board)
end

#winner need board position for winning combo
def winner(board)
  win_combo = won?(board)
  if !win_combo
    nil
  else
    board[win_combo[0]]

    end
end
