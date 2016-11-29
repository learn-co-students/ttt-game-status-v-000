# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #column 1
  [1, 4, 7], #column 2
  [2, 5, 8], #column 3
  [0, 4, 8], #diagonal 1
  [2, 4, 6] #diagonal 2
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X") || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
      return combo
    end
  end
  false
end

def full?(board)
 board.all?{|plays| plays != " "}
end

def draw?(board)
 full?(board) == true && won?(board) == false
end

def over?(board)
  full?(board) == true || won?(board).class == Array
end

def winner(board)
  if (won?(board).class == Array) && (board.select{|plays| plays == "X"}.count > board.select{|plays| plays == "O"}.count)
    return "X"
  elsif (won?(board).class == Array) && (board.select{|plays| plays == "O"}.count > board.select{|plays| plays == "X"}.count)
    return "O"
  else
    return nil
  end
end
