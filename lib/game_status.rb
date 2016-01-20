# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
   WIN_COMBINATIONS.detect do |combinations|
     if combinations.all? {|position| board[position] == "X"}
      return combinations
     elsif combinations.all? {|position| board[position] == "O"}
      return combinations
     else
      false
     end
  end
end

def full?(board)
  board.each_index do |place|
    if !position_taken?(board,place)
      false
      break
    else
      true
    end
  end
end

def draw?(board)
  if full?(board)
    true
    if won?(board)
      false
    else
      true
    end
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    if board[won?(board)[0]] == "X"
      return "X"
    else
      "O"
    end
  end
end