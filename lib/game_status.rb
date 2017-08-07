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

board = [" ", "", " ", " ", " ", " ", " ", " ", " "]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    index_1 = combination[0]
    index_2 = combination[1]
    index_3 = combination[2]

    position_1 = board[index_1]
    position_2 = board[index_2]
    position_3 = board[index_3]

  if position_1 == "X" &&
     position_2 == "X" &&
     position_3 == "X"
     return combination
   elsif
     position_1 == "O" &&
     position_2 == "O" &&
     position_3 == "O"
     return combination
   end
 end
    false
 end

 def full?(board)
   index = [0, 1, 2, 3, 4, 5, 6, 7, 8]
   index.each do |position|
     if board[position] == " " || board[position] == ""
       return false
     end
   end
   true
 end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  elsif won?(board) == true
    false
  else
    false
  end
end

def over?(board)
  if full?(board) == true ||
     draw?(board) == true ||
     won?(board) == true
      true
    else
      false
  end
end

def winner(board)
  board[won?(board)[0]] if won?(board)
end
