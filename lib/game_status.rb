# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top Row
  [3,4,5], # Middle Row
  [6,7,8], # Bottom Row
  [0,3,6], # First Column
  [1,4,7], # Second Column
  [2,5,8], # Third Column
  [0,4,8], # Left Diagonal
  [2,4,6] # Right Diagonal
]
def won?(board)
  x = "X";
  o = "O";

  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0];
    win_index_2 = win_combination[1];
    win_index_3 = win_combination[2];

    position_1 = board[win_index_1];
    position_2 = board[win_index_2];
    position_3 = board[win_index_3];

    if ((position_1 == x && position_2 == x && position_3 == x) ||
      (position_1 == o && position_2 == o && position_3 == o))
        return win_combination;
      else
        false
    end
  end
  #returning the WIN_COMBINATIONS array
  false; #explicitly tell ruby to return false if we've cycled through the board and no win combinations can be found
end

def full?(board)
  board.all? {|position| position_taken?(board, board.index(position))}
end
def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end
def over?(board)
  draw?(board) || won?(board)
end
def winner(board) 
  winner = won?(board)
  if won?(board) == false 
    nil
  else
    board[winner[0]]
  end
end
  