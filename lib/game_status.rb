# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [2,4,6] # Right diagonal
]

def won?(board)
  # detect returns the element it's iterated over once it hits a true value. in this case the mini array
  # if it doesn't ever get a true value it will return nil which is a falsey value
  # so if you check won?(board), you can either check it like !won?(board) or won?(board) == nil.
  # only falsey values in ruby is nil and false, everything else is truthy, even arrays :)
  WIN_COMBINATIONS.detect do |array|
    index_1 = array[0]
    index_2 = array[1]
    index_3 = array[2]

    # need to grab tokens out of the board array using the index values we just grabbed
    position_1 = board[index_1]
    position_2 = board[index_2]
    position_3 = board[index_3]

    if position_1 == position_2 && position_2 == position_3 && position_3 != " "
      true
    end
  end
end

def full?(board)
  board.none? {|space| space == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    char = won?(board)[1]
    board[char]
  else
    nil
  end
end
