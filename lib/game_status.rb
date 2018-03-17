# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Diagonal top left to bottom right
  [6,4,2], # Diagonal bottom left to top right
  [0,3,6], # Left vertical
  [1,4,7], # Middle vertical
  [2,5,8], # Right vertical
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if win_combination.all? {|i| position_taken?(board, i)}
      if win_combination.all? {|i| board[i] == "X"}
        true
      elsif win_combination.all?{|i| board[i] == "O"}
        true
      end
    end
  end
end

def full?(board)
  board.all? {|i| i != " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    true
  end
end

def winner(board)
   if won?(board)
     board_array = won?(board).map {|e| board[e] }
     board_array.detect {|e| e == "X" || e == "O"}
   end
end
