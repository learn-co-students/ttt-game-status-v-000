# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],  # Top row
    [3,4,5],  # Middle row
    [6,7,8],  # Bottom row
    [0,3,6],  # 1st column
    [1,4,7],  # 2nd column
    [2,5,8],  # 3rd column
    [0,4,8],  # diagonal down
    [2,4,6]   # diagonal up
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    positions = [board[combo[0]],board[combo[1]],board[combo[2]]]
      if (positions[0] == "X" && positions[1] == "X" && positions[2] == "X") || (positions[0] == "O" && positions[1] == "O" && positions[2] == "O")
        return combo
      end
  end
  return false
end

def full?(board)
  board.all? {|position| !(position.nil? || position == " ")}
end

def draw?(board)
  (won?(board) == false && full?(board) == true)? true : false
end

def over?(board)
  (won?(board) != false || draw?(board) == true)? true : false
end

def winner(board)
  won?(board) == false ?  nil : board[won?(board)[0]]
end
